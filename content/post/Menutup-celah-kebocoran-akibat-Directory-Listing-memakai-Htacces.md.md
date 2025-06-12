+++
penulis = "Rysnanto"
date = 2025-06-11T17:00:00.000Z
description = "Directory Listing adalah kondisi ketika server web menampilkan daftar isi folder (file dan subfolder) kepada pengunjung, jika tidak ada file index (seperti index.html atau index.php) di dalam folder tersebut."
title = "🔒Cara Fix Directory Listing Mencegah Kebocoran Data"
slug = "fix-directory-listing"
+++

## Apa itu Directory Listing?

Directory Listing adalah kondisi ketika server web menampilkan daftar isi folder (file dan subfolder) kepada pengunjung, jika tidak ada file index (seperti **index.html** atau **index.php**) di dalam folder tersebut.

Contoh tampilannya:

![](</tutorial/Screenshot 2025-06-12 105005.png>)

Jika hal ini terjadi, pengunjung (termasuk hacker) bisa melihat struktur folder Anda, bahkan mengakses file sensitif yang tidak seharusnya dilihat publik. Ini tentu berbahaya dan rentan terhadap eksploitasi.


Kenapa Harus Dimatikan?

1. Melindungi File Sensitif – File konfigurasi, backup, atau skrip bisa terlihat oleh siapa saja.
2. Mencegah Informasi Bocor – Struktur folder bisa dimanfaatkan untuk menemukan celah keamanan.
3. Meningkatkan Profesionalisme – Directory listing terlihat seperti situs belum selesai dikembangkan.

Tapi bukan berarti harus dimatikan , saya juga membuat website untuk keperluan download OS untuk kebutuhan sekolah , sengaja tidak saya matikan karena mempermudah untuk download yang hanya tinggal klick saja. Jadi intinya ketika dirasa tidak penting folder tanpa index.html/php tidak ada masalah. namun ketika folder-folder tersebut di rasa penting alangkah baiknya harus di perhitungkan untuk di tutup.


Cara Mematikan Directory Listing dengan .htaccess
-------------------------------------------------

###### 1. Buka Cpanel File Manager / FTP

Masuk ke file manager di cPanel Anda, atau gunakan FTP (misalnya FileZilla). Arahkan ke direktori root situs Anda (biasanya public\_html atau /).

###### 2. Edit atau Buat File .htaccess

Jika belum ada file .htaccess, silakan buat baru dengan nama:

##### 3. Tambahkan Baris Berikut:

```html
# Matikan Directory Listing
Options -Indexes
```

### 4. Simpan Perubahan

Simpan file .htaccess, lalu coba akses salah satu folder tanpa file index di browser (contoh: domain.com/folder). Jika berhasil, Anda akan melihat pesan 403 Forbidden atau halaman kosong — bukan daftar isi folder lagi.



🛡️ Tips Tambahan
-----------------

* Selalu backup file .htaccess sebelum mengedit.
* Jangan simpan file penting (seperti backup database) di folder publik.
* Gunakan juga proteksi tambahan seperti:
  * File permission yang tepat (misalnya 644 untuk file, 755 untuk folder)
  * Password protection pada direktori via .htpasswd
  * Plugin keamanan jika menggunakan CMS (WordPress, Joomla, dsb)


🧩 Penutup
----------

Dengan menonaktifkan Directory Listing, Anda sudah melakukan langkah penting dalam meningkatkan keamanan website. File .htaccess adalah alat sederhana namun sangat kuat untuk mengontrol perilaku server Apache.

Jika Anda membutuhkan bantuan lebih lanjut untuk meningkatkan keamanan situs Anda, jangan ragu untuk menghubungi kami. Keamanan website adalah investasi jangka panjang.



