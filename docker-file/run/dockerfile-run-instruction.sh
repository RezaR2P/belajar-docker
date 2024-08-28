RUN adalah sebuah instruksi untuk mengeksekusi perintah di dalam image pada saat build stage. 
Hasil perintah RUN akan di commit dalam perubahan image tersebut, jadi perintah RUN akan dieksekusi pada saat proses docker build saja, setelah menjadi Docker Image, perintah tersebut tidak akan dijalankan lagi. 
Jadi ketika kita menjalankan Docker Container dari Image tersebut, maka perintah RUN tidak akan dijalankan lagi.

Run Instruction Format
Perintah RUN memiliki 2 format :
RUN command
RUN [“executable”, “argument”, “...”]

Display Output
Secara default, di docker terbaru tidak akan menampilkan tulisan detail dari build-nya
Jika kita ingin menampilkan detailnya, kita bisa gunakan perintah --progress=plain
Selain itu juga docker build juga melakukan cache, jika kita ingin mengulangi lagi tanpa menggunakan cache, kita bisa gunakan perintah --no-cache
