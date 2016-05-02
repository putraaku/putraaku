#!/bin/bash

clear
echo "pilih satu angka untuk aksi";
echo "-------------";
echo "1. selamat datang";
echo "2. versi kernel";
echo "3. jam dan tanggal";
echo "4. pindah direktori"
read -p "Pilihan anda [1-4] :" pil;

if [ $pil -eq 1 ]; 
then
   echo "selamat datang putra";
elif [ $pil -eq 2 ]; 
then
   uname -v;
elif [ $pil -eq 3 ]; 
then
   watch -t -n 1 date;
else
   cd /home/putra/Downloads
fi
