Saat membuat container, secara default dia akan menggunakan semua CPU dan Memory yang diberikan ke Docker (Mac dan Windows), dan akan menggunakan semua CPU dan Memory yang tersedia di sistem Host (Linux)
Jika terjadi kesalahan, misal container terlalu banyak memakan CPU dan Memory, maka bisa berdampak terhadap performa container lain, atau bahkan ke sistem host
Oleh karena itu, ada baiknya ketika kita membuat container, kita memberikan resource limit terhadap container nya

Memory
Saat membuat container, kita bisa menentukan jumlah memory yang bisa digunakan oleh container ini, dengan menggunakan perintah --memory diikuti dengan angka memory yang diperbolehkan untuk digunakan
Kita bisa menambahkan ukuran dalam bentu b (bytes), k (kilo bytes), m (mega bytes), atau g (giga bytes), misal 100m artinya 100 mega bytes

CPU
Selain mengatur Memory, kita juga bisa menentukan berapa jumlah CPU yang bisa digunakan oleh container dengan parameter --cpus
Jika misal kita set dengan nilai 1.5, artinya container bisa menggunakan satu dan setengah CPU core

Contoh Kode : Menambah Resource Limit
docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest
lalu check dengan kode seperti berikut : docker container stats