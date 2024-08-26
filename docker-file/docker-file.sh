Pengenalan Dockerfile
Pada kelas Docker Dasar, kita sudah banyak belajar bagaimana cara kerja Docker, dari menggunakan Docker Image, sampai membuat Docker Container
Sekarang bagaimana jika kita ingin membuat Docker Image sendiri?
Pembuatan Docker Image bisa dilakukan dengan menggunakan instruksi yang kita simpan di dalam file Dockerfile

Dockerfile
Dockerfile adalah file text yang berisi semua perintah yang bisa kita gunakan untuk membuat sebuah Docker Image
Anggap saja semua instruksi untuk, menjalankan aplikasi kita, kita simpan di dalam Dockerfile, nanti Dockerfile tersebut akan dieksekusi sebagai perintah untuk membuat Docker Image

Docker Build
Untuk membuat Docker Image dari Dockerfile, kita bisa menggunakan perintah docker build.
Saat membuat Docker Image dengan docker build, nama image secara otomatis akan dibuat random, dan biasanya kita ingin menambahkan nama/tag pada image nya, kita bisa mengubahnya dengan menambahkan perintah -t
Misal berikut adalah contoh cara menggunakan docker build :

docker build -t khannedy/app:1.0.0  folder-dockerfile
docker build -t khannedy/app:1.0.0 -t khannedy/app:latest folder-dockerfile
