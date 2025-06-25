+++
penulis = "Rysnanto"
ilustration = "/ilustration/jongnesia-a.png"
date = 2025-06-23T17:00:00.000Z
description = "Panduan lengkap untuk mengubah HP Android menjadi web server online menggunakan Termux, Nginx, dan Cloudflare Tunnel dengan domain sendiri. Hosting gratis tanpa root dan tanpa IP publik."
title = "Cara Membuat HP Android Menjadi Web Server Online dengan Termux, Nginx, dan Custom Domain Cloudflare Tunnel"
slug = "webserver-android-termux-cloudflared"
+++

***

Ingin membuat server web langsung dari perangkat Android tanpa mengeluarkan uang untuk penyimpanan online, tanpa perlu melakukan root, serta dapat diakses melalui internet. Dalam tulisan ini, kamu akan menemukan cara mengubah ponsel pintar menjadi server. Android sebagai server web **dengan Nginx melalui Termux**, dan menghubungkannya ke internet menggunakan **Cloudflare Tunnel**.

Panduan ini ideal untuk:

* Pengembang web yang ingin menguji proyek
* Siswa yang belajar pengembangan sisi server
* Siapa saja yang ingin hosting gratis dari Android.

Dengan mematuhi langkah-langkah sederhana, kamu bisa mengoperasikan situs web baik yang bersifat statis maupun dinamis dari ponselmu, tanpa harus membeli nama domain maupun menyewa tempat server. Ini adalah opsi yang lebih mudah, adaptif, dan dapat dimanfaatkan kapan saja.

***

## 🎯 Menggunakan Domain Sendiri?

Memanfaatkan domain yang disesuaikan menciptakan citra yang lebih profesional dan mempermudah pengaturan lalu lintas. Cloudflare Tunnel memungkinkan kamu:

* Membuat koneksi aman dari HP ke internet
* Menghubungkan server lokal ke **subdomain kamu sendiri**
* Tanpa perlu port forwarding atau IP statis

***

## 📦 Persiapan

* HP Android (minimal RAM 2 GB)
* Termux dari F-Droid
* Akun Cloudflare aktif
* Domain kamu yang terhubung ke Cloudflare
* Cloudflared dan Nginx

***

## ⚙️ Langkah-Langkah Instalasi

### 1. Instalasi Awal Termux dan Nginx

```bash
pkg update && pkg upgrade
pkg install nginx
```

### 2. Jalankan Server Nginx

```bash
nginx
```

Tes dengan:

```bash
curl 127.0.0.1:8080
```

***

## 🌐 Konfigurasi Cloudflare Tunnel dengan Domain Sendiri

### 3. Install Cloudflared

```bash
pkg install cloudflared
```

### 4. Login Cloudflare

```bash
cloudflared login
```

Perintah ini akan membuka link autentikasi. Login dengan akun Cloudflare kamu, lalu pilih domain yang ingin kamu gunakan.

***

### 5. Buat Tunnel Baru

```bash
cloudflared tunnel create serverku-android
```

Nama `serverku-android` bebas, sesuaikan dengan nama project kamu.

Cloudflared akan menyimpan kredensial tunnel di:

```
~/.cloudflared/serverku-android.json
```

***

### 6. Buat Konfigurasi Tunnel (config.yml)

Buat file konfigurasi Cloudflared:

```bash
mkdir -p ~/.cloudflared
nano ~/.cloudflared/config.yml
```

Isi file dengan:

```yaml
tunnel: <TUNNEL-ID>
credentials-file: /data/data/com.termux/files/home/.cloudflared/<TUNNEL-ID>.json

ingress:
  - hostname: kodingin.eu.org
    service: http://localhost:8080
  - service: http_status:404
```

Ganti `kodingin.eu.org` dengan subdomain milikmu yang aktif di Cloudflare.

***

### 7. Arahkan DNS di Cloudflare

Masuk ke dashboard Cloudflare:

* Tambahkan DNS record **CNAME** ke `tunnel.cfargotunnel.com`
* Nama: `subdomainkamu`
* Target: `tunnel-id.cfargotunnel.com` (dapatkan ID dengan `cloudflared tunnel list`)

***

### 8. Jalankan Tunnel

```bash
cloudflared tunnel run serverku-android
```

Jika berhasil, domain kamu akan mengarah ke server Nginx yang berjalan di Termux!

***

## 🔐 Tips Keamanan

* Tambahkan autentikasi (Basic Auth) di Nginx
* Gunakan HTTPS default dari Cloudflare
* Jangan jalankan file berbahaya tanpa validasi

***

## ✅ Keuntungan Metode Ini

* Bisa pakai **domain sendiri**
* Lebih stabil dan profesional
* Tidak bergantung pada URL sementara
* Tetap gratis!

***

## 🧾 Kesimpulan

Dengan memanfaatkan Termux, Nginx, dan Cloudflare Tunnel pada domain yang kamu miliki, kamu dapat mengubah smartphone Android kamu menjadi server web yang canggih dan dapat disesuaikan. Sangat ideal untuk proyek demo, belajar tentang hosting, sampai pengujian secara langsung.

***

```
termux nginx domain sendiri, cloudflare tunnel custom domain android, web server hp android, hosting web dari hp, nginx cloudflare termux, server termux pakai domain
```
