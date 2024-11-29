---
ilustration: "/ilustration/botwa.png"
penulis: "Rysnanto"
description: "Pelajari cara membuat bot WhatsApp Sticker menggunakan Node.js dan library whatsapp-web.js. Ikuti panduan langkah demi langkah untuk mengirim stiker lucu dan kreatif dalam percakapan WhatsApp Anda"
slug: "bot-whatsapp-sticker"
title: "Membuat Bot Whatsapp Sticker"
date: 2023-07-12T04:22:48+07:00
---

WhatsApp telah menjadi platform komunikasi yang sangat populer di seluruh dunia. Dengan menggunakan WhatsApp, pengguna dapat mengirim pesan, berbagi gambar, video, dan bahkan stiker. Dalam artikel ini, kita akan menjelajahi cara membuat bot WhatsApp Sticker menggunakan Node.js dan library whatsapp-web.js. Tujuan kita adalah menjelaskan langkah-langkah secara rinci dan memberikan penjelasan untuk setiap fungsi yang digunakan.

# Pendahuluan

WhatsApp memiliki fitur stiker yang memungkinkan pengguna untuk mengirim stiker yang lucu dan kreatif dalam percakapan mereka. Meskipun WhatsApp belum menyediakan antarmuka resmi untuk membuat dan mengelola stiker, kita dapat menggunakan library whatsapp-web.js. Library ini memungkinkan kita untuk berinteraksi dengan WhatsApp menggunakan Node.js.

# Langkah-langkah

Berikut adalah langkah-langkah untuk membuat bot WhatsApp Sticker:

### Persiapan Awal

Sebelum memulai, pastikan Anda telah menginstal Node.js dan memiliki proyek Node.js yang telah diinisialisasi. Jika belum, ikuti langkah-langkah berikut:

Instal Node.js pada sistem Anda.
Buka terminal dan buat direktori baru untuk proyek Anda.
Pindah ke direktori tersebut dan inisialisasi proyek Node.js dengan menjalankan perintah npm init -y.
### Instalasi Library dan Dependensi

Dalam direktori proyek, instal library whatsapp-web.js dan qrcode-terminal dengan menjalankan perintah berikut:

```js
npm install whatsapp-web.js qrcode-terminal
```

### Membuat Koneksi WhatsApp

Buat file index.js dalam direktori proyek dan impor library yang diperlukan:
```js
const qrcode = require("qrcode-terminal");
const { Client, LocalAuth } = require("whatsapp-web.js");

const client = new Client({
  authStrategy: new LocalAuth(),
});

```

**Penjelasan**:

1. Fungsi require("qrcode-terminal") digunakan untuk mengimpor library qrcode-terminal yang digunakan untuk menampilkan kode QR.
2. Fungsi require("whatsapp-web.js") digunakan untuk mengimpor library whatsapp-web.js yang akan kita gunakan untuk berinteraksi dengan WhatsApp.
3. LocalAuth digunakan sebagai strategi otentikasi yang akan kita gunakan untuk menjaga sesi dan menghindari proses otentikasi yang berulang setiap kali bot dijalankan.
4. client adalah objek klien WhatsApp yang akan kita gunakan untuk melakukan interaksi dengan WhatsApp.

### Menampilkan Kode QR dan Menghubungkan Klien

Tambahkan kode berikut untuk menampilkan kode QR dan menghubungkan klien WhatsApp:
```js
client.on("qr", (qr) => {
  qrcode.generate(qr, { small: true });
});

client.on("ready", () => {
  console.log("Bot WhatsApp sudah terhubung!");
});

client.initialize();

```

**Penjelasan:**

1. client.on("qr", (qr) => { ... }) adalah fungsi yang akan dieksekusi ketika bot memperoleh kode QR yang digunakan untuk menghubungkan akun WhatsApp dengan bot. Kode QR tersebut akan ditampilkan di terminal menggunakan library qrcode-terminal.
2. client.on("ready", () => { ... }) adalah fungsi yang akan dieksekusi ketika bot berhasil terhubung dengan akun WhatsApp. Pada contoh kode di atas, pesan "Bot WhatsApp sudah terhubung!" akan ditampilkan di terminal sebagai indikasi bahwa bot telah siap untuk menerima pesan.
3. client.initialize() digunakan untuk memulai proses inisialisasi koneksi WhatsApp. Setelah fungsi ini dipanggil, bot akan memulai proses otentikasi dan berusaha terhubung dengan akun WhatsApp yang diatur

### Membuat Bot Stiker WhatsApp

Tambahkan kode berikut untuk membuat bot yang dapat menerima pesan dan mengirim stiker:
```js
client.on("message", async (msg) => {
  if (msg.body.startsWith("!sticker") && msg.hasMedia && msg.type === "image") {
    const sticker = await msg.downloadMedia();
    client.sendMessage(msg.from, sticker, { sendMediaAsSticker: true });
  }
});

```

**Penjelasan:**

1. client.on("message", async (msg) => { ... }) adalah fungsi yang akan dieksekusi ketika ada pesan masuk ke bot. Dalam contoh ini, kita menggunakan event "message" untuk mendengarkan setiap pesan yang masuk.
2. msg adalah objek pesan yang diterima oleh bot.
Pada contoh kode di atas, kita memeriksa apakah pesan dimulai dengan teks "!sticker", memiliki media terlampir, dan tipe media adalah gambar.
3. Jika semua kondisi terpenuhi, kita mengunduh media (gambar) yang terlampir menggunakan await msg.downloadMedia().
4. Selanjutnya, kita mengirim stiker sebagai balasan menggunakan client.sendMessage(msg.from, sticker, { sendMediaAsSticker: true }).

### Menjalankan Bot

Sekarang, jalankan bot WhatsApp dengan menjalankan perintah node index.js di terminal. Bot akan memulai koneksi dengan WhatsApp dan menampilkan kode QR di terminal. Gunakan ponsel Anda untuk memindai kode QR tersebut dan bot akan terhubung ke akun WhatsApp Anda.

Dengan mengikuti langkah-langkah di atas, Anda dapat membuat bot WhatsApp Sticker sederhana menggunakan Node.js dan library