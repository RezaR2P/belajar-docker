Setelah melakukan backup volume ke dalam file archive, kita bisa menyimpan file archive backup tersebut ke tempat yang lebih aman, misal ke cloud storage
Sekarang kita akan coba melakukan restore data backup ke volume baru, untuk memastikan data backup yang kita lakukan tidak corrupt

Tahapan Melakukan Restore
Buat volume baru untuk lokasi restore data backup
Buat container baru dengan dua mount, volume baru untuk restore backup, dan bind mount folder dari sistem host yang berisi file backup
Lakukan restore menggunakan container dengan cara meng-extract isi backup file ke dalam volume
Isi file backup sekarang sudah di restore ke volume
Delete container yang kita gunakan untuk melakukan restore
Volume baru yang berisi data backup siap digunakan oleh container baru
docker volume create mongorestore
docker container run --rm --name ubuntu --mount "type=bind,source=/home/rezar2p/Documents/0-reza/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-lagi.tar.gz --strip 1"
docker container create --name mongorestore --mount "type=volume,source=mongorestore,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=rezar2p --env MONGO_INITDB_ROOT_PASSWORD=rezar2p mongo:latest
docker container start mongorestore