Setelah kita selesai membuat Image, selanjutnya hal yang biasa dilakukan adalah mengupload Image tersebut ke Docker Registry
Salah satu Docker Registry yang gratis contohnya adalah Docker Hub
https://hub.docker.com/ 
lalu buat token di bagian account settings dan masuk ke fitur security

# kode docker push untuk image
cek image dulu
docker image ls -a
docker push username/repo:tag
username: username Docker Hub kamu (misalnya, chelixx).
repo: nama repository untuk image yang kamu buat.
tag: versi atau identifier dari image yang akan di-push (misalnya, v1.0 atau latest).
docker push chelixx/multi-stage:latest
setelah itu cek di docker hub apakah sudah teruplod

Digital Ocean Container Registry
Digital Ocean adalah salah satu cloud provider yang populer, dan memiliki fitur Docker Registry bernama Container Registry
Terdapat Free Version untuk ukuran sampai 500MB yang bisa kita gunakan
https://www.digitalocean.com/products/container-registry 
Silahkan buat Container Registry terlebih dahulu

Docker Config
Berbeda dengan Docker Hub yang kita diperlukan melakukan login ketika ingin melakukan push ke Registry
Di Digital Ocean, kita akan menggunakan Docker Config untuk mengirim Image ke Digital Ocean Container Registry
Ini lebih mudah karena kita bisa dengan gampang push Image dari manapun selama menggunakan config file yang sama
tapi harus buat container rgistry terlebih dahulu di digitalocean

Konfigurasi Docker Config
Secara default, Docker akan membaca config yang terdapat di $HOME/.docker
Di dalamnya terdapat file config.json yang berisi konfigurasi credential yang sudah kita gunakan ketika login ke Docker Hub
Agar tidak mengganggu, khusus untuk Digital Ocean, kita akan buat folder terpisah, misal .docker-digital-ocean
Selanjunya file creadential yang sudah di download, silahkan ganti namanya menjadi config.json dan simpan di folder .docker-digital-ocean tersebut

Docker Push 
Jika kita menggunakan perintah docker push, secara default itu akan melakukan push ke Container Registry yang teregistrasi di $HOME/.docker
Karena kita menggunakan lokasi yang berbeda untuk Digital Ocean, jadi ketika melakukan push, kita perlu mengubah default config nya menggunaka perintah :
docker --config /lokasi/folder/config/ push image 

# kode push digital ocean
registry.digitalocean.com/belajar
docker image ls -a
docker tag namaimage:tag registry/repo/namaimage:tag
docker tag chelixx/multi-stage:latest registry.digitalocean.com/belajar/multi-stage:latest
docker image ls -a
docker --config /home/rezar2p/.docker-digital-ocean push username/repo:tag
# push
docker --config /home/rezar2p/.docker-digital-ocean push registry.digitalocean.com/belajar/multi-stage:latest
# pull



