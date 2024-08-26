Bind Mounts merupakan kemampuan melakukan mounting (sharing) file atau folder yang terdapat di sistem host ke container yang terdapat di docker
Fitur ini sangat berguna ketika misal kita ingin mengirim konfigurasi dari luar container, atau misal menyimpan data yang dibuat di aplikasi di dalam container ke dalam folder di sistem host
Jika file atau folder tidak ada di sistem host, secara otomatis akan dibuatkan oleh Docker
Untuk melakukan mounting, kita bisa menggunakan parameter --mount ketika membuat container
Isi dari parameter --mount memiliki aturan tersendiri

Parameter Mount
Parameter        Keterangan
type:            Tipe mount, bind atau volume
source:          Lokasi file atau folder di sistem host
destination:     Lokasi file atau folder di container
readonly:        Jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis

Melakukan Mounting
Untuk melakukan mounting, kita bisa menggunakan perintah berikut :
docker container create --name namacontainer --mount “type=bind,source=folder,destination=folder,readonly” image:tag
docker container create --name mongodata --mount "type=bind,source=/home/rezar2p/Documents/0-reza/belajar-docker/mongo-data,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=rezar2p --env MONGO_INITDB_ROOT_PASSWORD=rezar2p mongo:latest
lalu start dan coba masuk ke robo 3T isi db nya setelah itu hapus container nya lalu coba buat container nya kembali apakah data nya masih ada atau hilang

Ini tidak direkomendasikan lebih baik menggunakan docker type volume dibandinkan dengan type bind