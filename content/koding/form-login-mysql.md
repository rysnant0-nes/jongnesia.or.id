+++
penulis = "Kodingers"
date = 2023-05-13T17:00:00.000Z
description = "Membuat form login sederhana dengan php & mysql"
title = "Membuat form login sederhana dengan php & mysql"
slug = "form-login-php-mysql-simple"
+++

Jongnesia.com - Hi sobat ngoding , disini kita akan belajar membuat sebuah form login yang sangat - sangat sederhana. Walaupun sederhana namun bisa untuk belajar konsep form login dan barang kali yang mampir disini karena ada tugas dari sekolahan untuk membuat form login terhkusus anak Rpl. Kita akan menggunakan bahasa pemrogaman php dan database mysql. Oke kita langsung saja masuk ke pembahsan intinya.

## Membuat Database

Sebelum kita membuat program nya , lebih kita merancang dulu untuk database user nya. karena database ini akan kita gunakan untuk validasi apakah yang di inputkan user sama dengan yang berada di dalam database kita. Oke disini aku akan membuat sebuah database dengan nama "Travel", teman-teman boleh samakan nama database nya atau bisa di buat sendiri nama db nya terserah teman-teman.

Di dalam database nya terdapat table yang bernama "user" dan di dalam table user terdapat field atau kolom sebagai berikut

```sql
id_user int(11) auto increment ,
username varchar(225) ,
password varchar(225)
```

Saya jelaskan , jadi id\_user ini berfungsi sebagai primary key. sedangkan username dan password ini kita akan gunakan untuk sebagai validasi di form login. kurang lebih seperti ini struktur seluruhnya database yang kita buat.

Atau jika teman-teman biar gak repot bikin contoh table nya bisa copy code di bawah ini lalu pastekan ke Sql yang ada di dalam phpmyadmin. untuk code nya seperti ini :

```sql
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Sep 2022 pada 08.45
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/_!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT _/;
/_!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS _/;
/_!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION _/;
/_!40101 SET NAMES utf8mb4 _/;

--
-- Database: `travel`
--

---

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
`id_user` int(11) NOT NULL,
`username` varchar(225) NOT NULL,
`password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/_!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT _/;
/_!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS _/;
/_!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION _/;
```

Membuat Program

Sesudah kita bergelud dengan database sekarang kita saatnya akan membuat program untuk validasi atau membuat form login yang teman-teman inginkan. Pertama tama yang harus kalian lakukan yaitu membuat folder baru di dalam xampp teman-teman, masih ingat gak naruh file2 nya dimana agar bisa di lihat di browser? ya betul di C:/xampp/htdocs. Buatlah folder dengan nama misalnya tutorial. atau terserah teman-teman nama foldernya.Lalu buka ke dalam code editor, disini saya menggunakan visual studio code.

Buat file baru dengan nama config.php, nah didalam config ini kita akan mencoba menyambungkan file project kita ke database yang kita punya. untuk code koneksi nya bisa copas di bawah ini

```php
define('hostdb','localhost');
define('userdb','root');
define('passdb','');
define('namadb','ganti dengan nama database kamu');

$config = mysqli_connect(hostdb,userdb,passdb,namadb);
```

query untuk melakukan koneksi yaitu mysqli\_connect lalu diikuti dengan konfigurasi nya. silahkan di copas laluu di tempel ke file config.php.

Sekarang teman-teman buat file baru lagi dengan nama login.php , lalu isi dengan code di bawah ini

```php
<?php
include "config.php";

if (isset($_POST['submit'])) {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    // Menggunakan prepared statements untuk mencegah SQL Injection
    $stmt = $config->prepare("SELECT * FROM user WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($row = $result->fetch_assoc()) {
        // Verifikasi password
        if (password_verify($password, $row['password'])) {
            echo "<script>alert('berhasil')</script>";
        } else {
            echo "<script>alert('gagal')</script>";
        }
    } else {
        echo "<script>alert('gagal')</script>";
    }

    $stmt->close();
    $config->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
</head>
<body>
    <form action="" method="post">
        <input type="text" name="username" required placeholder="Username" />
        <input type="password" name="password" required placeholder="Password" />
        <button type="submit" name="submit">Submit</button>
    </form>
</body>
</html>
```

Bang kok tampilannya sederhana? nah itu tugas teman teman buat ngedesign tampilannya sekalian untuk belajar css kan. jadi inti dari code diatas itu padaa saat user klick submit maka proses validasi di jalankan dimana saya menamngkap dengan $\_POST\['username'] dan $\_POST\['password'] yang di inputkan user. $\_POST ini meruapakan method yang digunakan untuk mengirim data (metode).
