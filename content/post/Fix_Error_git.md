+++
penulis = "Nuriskha Ainun Fahmi "
ilustration = "https://assets.tina.io/c0d66a0c-56da-4506-85d7-c2a9b6ad3b0c/ilustration/Yellow Black Bold Attention Message Instagram Post.png"
date = 2025-02-17T17:00:00.000Z
description = 'Cara Memperbaiki Error "Non-Fast-Forward" pada git saat push project'
title = "Solusi Ampuh Mengatasi Error Non-Fast-Forward saat Push ke GitHub"
youtube_id = ""
+++

# Fix Error Saat Push Project di GitHub (Non-Fast-Forward)

![](/error.png)

Ketika sedang bekerja dengan Git dan ingin menyimpan atau push project ke GitHub, tentu kita berharap prosesnya berjalan lancar tanpa kendala. Namun, apa jadinya jika justru muncul error yang menyatakan "non-fast-forward"? Hal ini bisa sangat menjengkelkan, terutama jika kita tidak memahami penyebabnya.

Error non-fast-forward terjadi karena branch main di repositori lokal tertahan atau tertinggal dibandingkan branch main di repositori remote (GitHub). Akibatnya, Git menolak push karena perubahan yang ada tidak bisa digabungkan secara fast-forward.

### Penyebab Error "Non-Fast-Forward"

Beberapa penyebab utama error ini antara lain:

1. Branch lokal tidak up-to-date – Ada perubahan terbaru di remote yang belum diambil ke lokal.
2. Push dilakukan tanpa menarik perubahan terbaru terlebih dahulu – Ini sering terjadi jika ada orang lain atau proses lain yang sudah memperbarui repositori remote.
3. Merge yang belum terselesaikan – Jika ada perubahan yang belum selesai digabungkan, Git akan menolak push untuk menghindari konflik.

Jika kamu mengalami error ini, jangan panik! Berikut adalah beberapa cara memperbaikinya.

## Cara Memperbaiki Error "Non-Fast-Forward"

### 1. Tarik Perubahan Terbaru dari Remote

Sebelum melakukan push, pastikan repositori lokal sudah sinkron dengan remote dengan menjalankan perintah:

git pull origin main

Perintah ini akan mengambil perubahan terbaru dari remote branch main dan mencoba menggabungkannya dengan branch lokal. Jika tidak ada konflik, maka kamu bisa langsung melakukan push ulang:

git push -u origin main

Namun, jika ada konflik, Git akan meminta kamu untuk menyelesaikannya terlebih dahulu sebelum push.

### 2. Paksa Perubahan ke Remote (Force Push)

Jika kamu benar-benar yakin bahwa perubahan di lokal lebih penting dan ingin mengabaikan perubahan di remote, kamu bisa menggunakan force push:

git push -f -u origin mainatau git push --force -u origin main

⚠️ Peringatan: Perintah ini akan menimpa perubahan yang ada di remote. Jika ada rekan kerja yang telah mengupdate kode di remote, perubahan mereka akan hilang! Oleh karena itu, gunakan perintah ini dengan hati-hati.

### 3. Gunakan Force with Lease (Metode Lebih Aman)

Jika kamu ingin memastikan bahwa force push tidak menghapus perubahan yang dibuat oleh orang lain sejak terakhir kali kamu melakukan pull, gunakan:

git push --force-with-lease

Metode ini lebih aman dibandingkan --force karena Git akan mengecek apakah ada perubahan baru di remote yang belum diambil. Jika ada, push akan dibatalkan untuk mencegah kehilangan data.

### 4. Gunakan Fetch dan Merge Secara Manual

Jika ingin melihat perubahan sebelum menggabungkannya, gunakan:

git fetch origin main

Kemudian periksa perbedaannya:

git diff main origin/main

Jika perubahan sesuai, lakukan merge secara manual:

git merge origin/main

Setelah berhasil di-merge, lakukan push:

git push -u origin main

## Kesimpulan

![](/tutorial/image_2025-02-18_21-18-15.png)

Error non-fast-forward adalah mekanisme keamanan Git untuk mencegah kehilangan data dan konflik yang tidak diinginkan. Oleh karena itu, sebelum melakukan push, selalu pastikan untuk melakukan pull atau fetch terlebih dahulu agar branch lokal tetap sinkron dengan remote.

Jika tetap ingin memaksa push, gunakan git push --force dengan penuh kesadaran bahwa hal itu bisa menghapus perubahan di remote. Untuk opsi lebih aman, gunakan git push --force-with-lease agar tidak menimpa perubahan terbaru yang dibuat oleh orang lain.

Dengan memahami konsep ini, kamu bisa bekerja lebih lancar dengan Git tanpa mengalami hambatan yang tidak perlu. Semoga artikel ini membantu! 🚀

***

Terima kasih telah membaca! Jika masih mengalami kendala atau ingin berbagi pengalaman, silakan tinggalkan komentar atau diskusi lebih lanjut. 😊
