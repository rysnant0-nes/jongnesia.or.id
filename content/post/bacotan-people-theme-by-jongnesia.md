---
ilustration: "/ilustration/bacotan-people.webp"
penulis: "Rysnanto"
description: "Tema Bacotan Peopple adalah tema Hugo yang modern dan menarik yang dirancang untuk membangun situs web atau blog. Tema ini dilengkapi dengan fitur-fitur seperti pagination, sidebar, dan tata letak yang responsif"
slug: "theme-bacotan-people-hugo"
title: "Bacotan People Theme by Jongnesia"
date: 2023-05-11T21:55:51+07:00
---

![Ilustrasi Bacotan People Theme](https://jongnesia.com/bacotan-people.png)

# Tema Bacotan Peopple

Tema Bacotan Peopple adalah tema Hugo yang modern dan menarik yang dirancang untuk membangun situs web atau blog. Tema ini dilengkapi dengan fitur-fitur seperti pagination, sidebar, dan tata letak yang responsif.

## Fitur

Beberapa fitur yang terdapat dalam tema Bacotan Peopple antara lain:

- Pagination: Memudahkan pengguna untuk menavigasi halaman-halaman situs.
- Sidebar: Menampilkan informasi tambahan seperti tautan ke akun media sosial dan informasi tentang situs.
- Tata letak responsif: Tema ini dirancang untuk menyesuaikan tampilan dengan perangkat pengguna, seperti desktop dan perangkat seluler.
- Kustomisasi warna: Tema ini menggunakan warna-warna cerah dan kontras yang dapat dikustomisasi sesuai dengan preferensi pengguna.

## Instalasi

Untuk menginstal tema Bacotan Peopple, Anda dapat melakukan langkah-langkah berikut:

1. Buka terminal dan masuk ke direktori root situs Hugo Anda.
2. Jalankan perintah berikut untuk menambahkan tema sebagai submodule git:

```apache
git submodule add https://github.com/j0ngd3v/bacotan-peopple-theme.git themes/bacotan-peopple
```

3. Kemudian, tambahkan tema di dalam file `config.toml` dengan menambahkan baris berikut:

```toml
baseURL = "https://jongnesia.com/"
title = "Jongnesia"
theme = "bacotan-people"

[params]
quote = "KAMI BANGGA MENJADI WARGA NEGARA REPUBLIK INDONESIA"
about = "Kami adalah forum untuk diskusi. Kenapa membawa nama negara indoensia? karena saya cinta indonesia , Sebagai warga negara yang baik saya akan sepeuhnya menjaga forum ini tetap di jalan yang benar karena telah membawa nama harum indonesia. Kita dibangun pada 2020D , Adapun tujuan kami membangun forum antara lain agar adanya interaksi yang terjadi , menambah relasi dan mungkin ilmu baru."
footer = "Develop By JongNesia ♥"
paginate = 5
description = "JONGNESIA - PEMUDA INDONESIA BERKARYA Forum Teknologi Yang Bertoleran Tinggi Serta Menjunjung Tinggi Persatuan Dan Kesatuan"

[[params.link]]
name = "Whatsapp"
url = ""
[[params.link]]
name = "Telegram"
url = "https://t.me/@jongnesia"
[[params.link]]
name = "Github"
url = "https://github.com/j0ngd3v"
[[params.link]]
name = "Kumplink"
url = "https://kumplink.my.id"


[[menus.main]]
name = "Home"
url = "/"
weight = 1

[[menus.main]]
name = "post"
url = "/post"
weight = 2

[[menus.main]]
name = "Login"
url = "/admin"
weight = 3

```

Setelah langkah-langkah di atas dilakukan, tema Bacotan Peopple akan terpasang dan dapat digunakan pada situs Hugo Anda.

## Kustomisasi

Tema Bacotan Peopple dapat dikustomisasi untuk mengubah tampilan atau fitur-fitur yang ada. Beberapa cara untuk mengkustomisasi tema ini antara lain:

- Mengubah warna: Tema ini menggunakan warna-warna cerah dan kontras yang dapat dikustomisasi sesuai dengan preferensi pengguna. Warna-warna ini dapat diubah di dalam file `assets/scss/_variables.scss`.
- Menambahkan atau mengubah tata letak: Tata letak tema dapat diubah dengan menambahkan atau mengubah file HTML yang terdapat dalam folder `layouts`.
- Menambahkan atau mengubah fitur: Fitur-fitur tema dapat diubah atau ditambahkan dengan menambahkan atau mengubah file HTML atau CSS yang terdapat dalam folder `layouts` dan `assets`.

Dengan kustomisasi yang tepat, tema Bacotan Peopple dapat disesuaikan dengan kebutuhan dan preferensi pengguna.

Dokumentasi di atas memberikan informasi tentang tema Bacotan Peopple, termasuk fitur-fitur yang ada, cara menginstal, dan cara mengkustomisasi tema. Semoga dokumentasi ini bermanfaat bagi pengguna yang ingin menggunakan atau mengkustomisasi tema Bacotan Peopple di situs Hugo kamu.
