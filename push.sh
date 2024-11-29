#!/bin/bash

# Ganti dengan logo ASCII Anda
YOUR_LOGO_HERE=" 
     _  ___  _   _  ____ _   _ _____ ____ ___    _    
    | |/ _ \| \ | |/ ___| \ | | ____/ ___|_ _|  / \   
 _  | | | | |  \| | |  _|  \| |  _| \___ \| |  / _ \  
| |_| | |_| | |\  | |_| | |\  | |___ ___) | | / ___ \ 
 \___/ \___/|_| \_|\____|_| \_|_____|____/___/_/   \_\
"

# Tampilkan logo ASCII
echo "$YOUR_LOGO_HERE"
echo ""
echo "Pilih opsi:"
echo "1. Push ke GitHub"
echo "2. Jalankan Hugo Server"
echo "3. Buat Postingan"
echo ""
read -p "Masukkan pilihan: " choice

case $choice in
    1)
        echo "Melakukan push ke GitHub..."
        git add .
        git commit -m "Pesan commit otomatis"
        git push
        ;;
    2)
        echo "Menyalakan Hugo server..."
        hugo server
        ;;
    3)
        read -p "Masukkan nama file (misalnya,  post/my-new-post.md): " filename
        echo "Membuat postingan baru..."
        hugo new "$filename"
        ;;

    *)
        echo "Pilihan tidak valid. Harap pilih 1 atau 2."
        ;;
esac
