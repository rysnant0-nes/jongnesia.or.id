---
ilustration: "/ilustration/ftp.webp"
penulis: "Rysnanto"
description: "Berikut ini cara untuk mengunggah project yang berada di gihtub kita menuju ke Hosting menggunakan FTP"
slug: "deploy-web-github-ke-hosting"
title: "Membuat Script Auto Deploy Dari Git ke Hosting"
date: 2023-06-22T13:54:11+07:00
draft:
---

Hai sobat jongnesia , sebelumnya saya mengucapkan terimakasih telah menemani website ini dari 2 tahun lalu. Pada artikel ini saya mau sharing bagaimana untuk menghubungkan dari github ke Hosting , yang nantinya project yang kita taruh ke dalam github akan secara otomatis terupload ke dalam Hosting. Sebelumnya apabila kita ingin mengupload project yang ada di local kita harus manual compres dulu project nya ke dalam .zip lalu kita upload ke hosting file manager namun sekarang kita tidak akan melakukan tersebut nantinya github lah yang akan menghandle semua itu dengan menggunakan fitur FTP. Apasih ftp itu min?

# Pengertian FTP

**FTP (File Transfer Protocol)** adalah internet service yang dirancang untuk membuat sambungan ke server internet tertentu atau komputer, sehingga user dapat mengirimkan file ke komputer (download) atau mengirimkan file ke server (upload). FTP server adalah hal yang saat ini banyak digunakan untuk melakukan pertukaran data, karena lebih mudah daripada menggunakan perangkat kabel atau fisik.

**Sumber** :
https://www.niagahoster.co.id/blog/apa-itu-ftp/

# Membuat akun FTP di cpanel

Setelah teman - teman mengenal ftp alangkah baiknya kita sekarang membuat sebuah akun ftp baru di cpanel , siapkan hosting nya. saya menggunakan arenhost untuk hosting percobaan harganya murah banget bisa di coba sendiri.

![Create FTP Accounts](/tutorial/create-ftp.png)

Setelah muncul form seperti gambar di bawah ini , isikan Login sesuai keinginan mu disini saya isi dengan "admin" jadi nanti nya ketika login ftp menjadi "admin@pramukaufa.or.id". Paswword jangan sampai lupa , buat password dengan kombinasi yang sempurna dan rumit. Lalu untuk directory saya langsung menuju ke root halaman domain saya , nantinya perubahan akan masuk ke directory root tersebut, jadi nanti file nya masuk ke "/home/pramukaufa/public_html" di gambar kurang public_html maaf hehe. jika teman - teman ingin ke folder lain silahkan sesuaikan dengan lokasi folder yang ingin di akses FTP

![Create FTP Accounts](/tutorial/create-ftp2.png)

# Membuat Repository di Github

Sekarang kita akan membuat sebuah repo yang akan menampung file project kita , jadi nanti kita akan push project ke repo ini nantinya github akan mengupload project ini ke dalam hosting yang sudah kita konfigurasi tadi FTP nya. Sampai sini paham kan? . Saya anggap teman teman sudah paham tentang buat repository. sekarang yang kita akan lakukan push ke github. Baca git cheatsheet yang saya buat untuk belajar push ke github https://jongnesia.com/post/git-cheatsheet-langkah-mudah-menggunakan-git/

![Create FTP Accounts](/tutorial/crate-repo.png)

Saya anggap teman - teman sudah berhasil untuk push file project ke github. Sekarang yang kita akan lakukan yaitu

# Konfigurasi FTP ke Github

ya , kita akan konfigurasi ftp akun yang kita buat ke dalam github repository kita tadi , caranya teman - teman masuk ke repository project teman - teman lalu pilih setting. Setelah itu cari bagian menu yang bernama "Screate & Variabels" lalu pilih submenu bernama "Action" lalu klick tombol "New repository screts" . Setelah itu buat 3 scret baru yaitu USERNAME_FTP , PASSWORD_FTP dan SERVER_FTP seperti gambar di bawah ini

![Configurasi ftp github](/tutorial/conf-ftp.png)

![Configurasi ftp github](/tutorial/conf-ftp2.png)

### **Keterangan** :

**USERNAME_FTP :** isi dengan username ftp yang kita buat tadi

**SERVER_FTP :** ftp.namadomain.com

**PASSWORD_FTP :** isi dengan password yang kamu buat tadi

Setelah membuat 3 Screts , kita buka menu actions di repo kita. setelah itu teman - teman klick **"this and set up a workflow yourself"**. cari app yang bernama "FTP ACTION" seperti gambar di bawah ini

![Configurasi ftp github](/tutorial/conf-ftp3.png)

![Configurasi ftp github](/tutorial/conf-ftp4.png)

di dalam code editor github , copy paste kode yang saya berikan di bawah ini nanti hasil nya akan seperti ini :

```bash
on: push
name: 🚀 Deploy website on push
jobs:
  web-deploy:
    name: 🎉 Deploy
    runs-on: ubuntu-latest
    steps:
    - name: 🚚 Get latest code
      uses: actions/checkout@v3

    - name: 📂 Sync files
      uses: SamKirkland/FTP-Deploy-Action@v4.3.4
      with:
        server: ${{ secrets.SERVER_FTP }}
        username: ${{ secrets.USERNAME_FTP }}
        password: ${{ secrets.PASSWORD_FTP }}
```

![Configurasi ftp github](/tutorial/conf-ftp5.png)

Setelah configurasi selesai lalu klick commit changes dan klick commit changes lagi. lalu setelah itu kita coba buka menu actions lagi maka akan ada yang berjalan yaitu github sedang push kodingan atau project kita ke hosting kita. pastikan username password dan server benar agar menghindari kesalahan.
