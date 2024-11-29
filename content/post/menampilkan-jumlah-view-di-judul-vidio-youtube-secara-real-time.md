+++
author = "admin"
date = 2023-04-19T17:00:00.000Z
description = "Beginilah cara untuk menampilakan jumlah penonton like comment di judul youtube menggunakan API"
slug = "menampilkan jumlah like realtime"
title = "Menampilkan jumlah  view di judul vidio youtube secara real time"
_template = "blog"
+++

API merupakan kepanjangan dari Application Programing Interface , yang fungsi nya atau kegunaan API ini adalah sebagai perantara bagi beberapa aplikasi atau klien dan server pada satu platform yang sama atau lintas platform agar saling terhubung atau berkomunikasi.Jadi API ini yang berkomunikasi adalah mesin dengan mesin, contoh penggunaan api dalam lingkup kita sehari-hari , semisal pesan tiket kereta di traveloka , nah aplikasi traveloka ini agar dapat mendapatkan jadwal data dari KAI misalnya, harus terhubung dengan api yang disediakan oleh KAI.

Kembali ke topik utama , Dinisi kita akan meminta data youtube atau API youtube untuk mengetahui berapa subcriber , viewer , like , comment dan masih banyak lagi sebenernya untuk kita tampilkan ke judul vidio kita seperti yang lagi viral belakangan ini. Script untuk memanggil data API nya saya sudah sediakan di bawah ini tinggal copy saja :

    
    function updateTitle() {
      
      var videoID = 'id_vidiomu'; 
      var part = 'snippet,statistics';
      var params = {'id': videoID};
      
      var response = YouTube.Videos.list(part, params);
      var video = response.items[0];
      var videoViewsCount = video.statistics.viewCount;
      var videoLikeCount = video.statistics.likeCount;
      var videoCommentCount = video.statistics.commentCount;
      var videoTitle = 'Cara Cheat Warnet Simulator Menggunakan Cheat Engine . Ditonton ' + videoViewsCount + ' Views & ' + videoLikeCount + ' Likes  ';
      
      video.snippet.title = videoTitle;
      
      try{
        YouTube.Videos.update(video, part);
        
      }catch(e){
        
      
      }
      
    }

Diatas Merupakan code untuk memanggil semua data API yang diberikan youtube. script diatas akan mengupdate vidio sesuai vidioID yang ingin kita rubah judulnya. Oke sekarang kita masuk bagaimana untuk menjalan kan kode diatas?

# **Cara Jalankan Script**

saya menggunakan aplikasi dari[ script.google.com](https://draft.blogger.com/blog/post/edit/2783221079845210795/92236100600774363#). silahkan teman teman masuk kedalam website tersebut. Setelah di dalam dashboard, teman-teman klick project baru secara otomatis teman teman akan di bawa ke code editor nya seperti gambar di bawah ini

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVlSZUuj27H29NO_5ihRfj3dPrbtRYjg6uqY5tACnSpK7V5gFouieQqZxaGlMHyJHMJaX4L1wCnu7FWrjyt38V53rwY_Cxuci-ulurVdIkmSY2DzVJ-84zL59JhP0bfXhKZJoVc9gnon1XB7L6TIjVjMVGInQeXBAiUuNJqj3av7jkltKUztET44eLsg/s320/ss1.png =320x211)](https://draft.blogger.com/blog/post/edit/2783221079845210795/92236100600774363#)

  
  
Lalu setelah itu teman-teman bisa klick pada bagian layanan yang saya tandai dengan warna merah.

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjQjO3cH2bElXL69L9IGDHyklNNbaJT2MbXbWJZ6gO1YCjqvecW_CQG9IvGlWrTNX9Jzd47m6kpAJDGuyEs2_one1zRj8fgVv_HbwuO1RsfmY2mEva6LqKQmokPbrGb1uIKdVkexTQW-wVsXB3MhrMi_H0A5DgZTxLSWRIEqTq9b7bn9zNRd-l97vpNJQ/s320/ss2.png =320x211)](https://draft.blogger.com/blog/post/edit/2783221079845210795/92236100600774363#)

Kita disini akan memilih layanan dari Youtube Data API V3 bagian paling bawah seperti yang saya lingkari di bwah ini. 

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjiLafxbaOMYrcNokDGx1snJcLx6kC15Fw0Oog1uubHJe3w5Z-6w3Yk6HQVma8ExrLHYIgdhTdYDsCijYEx3VRS_KOHFbPp7e9qqmwoSLJXSfj_yyLX6WmF2t8KrlurhFdM9GXHpjsAneu5X3zIfbejH9rDt6MVw4D9tpKomMvuWPEOMZCesz5FkDmbMA/s320/ss3.png =320x211)](https://draft.blogger.com/blog/post/edit/2783221079845210795/92236100600774363#)

Setelah semua telah di konfigurasi,sekarang teman - teman silahkan tempel code atau script yang saya berikan diatas , lalu tempel ke dalam editor code yang disediakan. setelah di tempel lau klick simpan atau save. jangan lupa juga vidioID di ganti dengan id vidio teman-teman yang ingin dirubah judul nya. saya contohkan dari salah satu vidio saya di youtube ini.

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj4ZcG7c1ZTOylFiZnkFnGoKTwaNYHAfEDumGrOpM9miQcTyhjxNrTzjrmoGreggjkeFI3gAJM-a02Eiiof8at3627dxqacZhnmisKEZw844SOSiWO8M9iNJIO36RBrjZBt8ZQnLPxoDbQ2iPFPIGve70Tb7t863BPZovwrhrxvkigVbvcILTrU9BZOmg/s320/ss4.png =320x211)](https://draft.blogger.com/blog/post/edit/2783221079845210795/92236100600774363#)

Setelah semuanya selesai , sekarang kita jalankan saja prosesnya dengan cara klick jalankan. jika teman teman terdapat pemberitahuan untuk perizinan mengakses akun, terima saja dan ikuti alur untuk login atau autentikasi bahwa kamu benar benar pemilik vidio itu. sampai disini kamu sudah berhasil untuk membuat sebuat trend hahaha.namun itu belum bisa otomatis terupdate. untuk menambahkan trigger agar setaip menit update teman teman bisa masuk ke pemicu gambar jam. lalu klick tambah pemicu. lalu rubah yang awalnya jam menjadi menit. lalu simpan. nah maka secara otomatis vidio mu akan terupdate bila mana ada penonton atau like baru. berikut hasil punya saya

[![](https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhfXTihcvtIXUYWYypMZaIjWqw8hBreOgA3Pa8yL4eyTsT6q_mhbR2klUASYE_SS_wyzY8FMBNTb5AWmCRl0dXWR37-QhkwVaKT5_hkjoJP9z6AMBWwvRLKAKUBcsIkcdIoOlmzZ4yLdpC5yqzD-Ej7nRc0mzldw2XNikPlRy9SiXaZo4yq_8Sw792CQA/s320/ss5.png =320x211)](https://draft.blogger.com/blog/post/edit/2783221079845210795/92236100600774363#)

# **Kesimpulan**

jadi bagi teman teman yang penasaran bisa di coba, sebenarnya sangat mudah untuk membuat seperti ini. yaitu menggunakan API, kita bisa update vidio lewat codingan.untuk teman teman yang masih mempunyai masalah terkait ini bisa komentar di bawah siapa tau mimin bisa membantu permasalahan
