Saat membuat aplikasi, menggunakan Environment Variable adalah salah satu teknik agar konfigurasi aplikasi bisa diubah secara dinamis
Dengan menggunakan environment variable, kita bisa mengubah-ubah konfigurasi aplikasi, tanpa harus mengubah kode aplikasinya lagi
Docker Container memiliki parameter yang bisa kita gunakan untuk mengirim environment variable ke aplikasi yang terdapat di dalam container

Menambah Environment Variable
Untuk menambah environment variable, kita bisa menggunakan perintah --env atau -e, misal :
docker container create --name namacontainer --env KEY=”value” --env KEY2=”value” image:tag
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=rezar2p --env MONGO_INITDB_ROOT_PASSWORD=rezar2p mongo:latest
setelah itu coba connect mongodb di Robo 3T dengan password dan username saat kita buat container