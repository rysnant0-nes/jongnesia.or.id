---
ilustration: "/ilustration/sqli.png"
penulis: "Michat"
description: "Melakukan penetration untuk menemukan celah SQLI di website"
slug: ""
title: "Mencari Bug Sqli"
date: 2024-07-20T19:42:50+07:00
draft: true
---

SQL Injection (SQLi) adalah teknik injeksi kode yang dapat digunakan oleh penyerang untuk memasukkan pernyataan SQL jahat ke dalam bidang input untuk dieksekusi oleh database yang ada di bawahnya. Artikel ini akan memandu kamu melalui uji penetrasi SQL Injection yang komprehensif menggunakan SQLMap, alat uji penetrasi open-source populer.

Prasyarat

1. Pengetahuan dasar tentang SQL dan keamanan aplikasi web.
2. Akses ke target web aplikasi dan izin untuk uji.
3. SQLMap terinstal di mesin uji kamu. kamu dapat menginstalnya menggunakan pip. atau bisa teman teman clone repository SQLMAP nya. dan jangan lupa install PYTHON.

```cmd
pip install sqlmap

```
## 1. Kumpulin Informasi

Sebelum memulai, koleksi informasi tentang target:

1. Identifikasi URL(target) dan titik akhir.
2. Tentukan tumpukan teknologi (misalnya, PHP, ASP.NET, Java) dan jenis database (misalnya, MySQL, PostgreSQL, MSSQL).
3. Periksa apakah ada kerentanan atau misconfigurasi yang dikenal.

## 2. Coba SQL Injection MANUAL

Sebelum mengotomatisasi dengan SQLMap, lakukan uji SQL Injection manual untuk memahami perilaku target dan mengidentifikasi parameter yang rentan.

1. Identifikasi bidang input: Inspeksi target web aplikasi untuk menemukan bidang input seperti bilah pencarian, formulir login, atau parameter di URL Pokoknya yang bisa buat kita input.
2. Craft payload SQLi: Gunakan payload SQLi sederhana untuk uji kerentanan. Misalnya:
' OR 1=1 -- -
' OR '1'='1
' OR SLEEP(5) -- -
3. Test bidang input: Injeksikan payload yang telah dibuat ke bidang input yang diidentifikasi dan observasi respons aplikasi.

Saya kasih contoh untuk test manual ,saya tambahkan payload ke form input

![](/tutorial/sql-i.png)

maka akan terjadi kesalahan query karena kurangnya filter terhadap string khusus dan kesalahan tersebut ter exspose karena tidak terfilter dengan baik , inilah yang dinamakan website rentan SQLI :

![](/tutorial/sqli2.png)
## 3. Kita Eksekusi dengan tools SQLMAP

Setelah mengidentifikasi parameter rentan, gunakan SQLMap untuk mengotomatisasi proses dan meng-ekstrak informasi lebih banyak.

Download terlebih dahulu untuk Tools sqlmap nya, disini saya run menggunakan windows dan di komputer saya sudah terinstall python untuk menjalankan program.




