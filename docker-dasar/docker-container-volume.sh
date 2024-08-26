Volume yang sudah kita buat, bisa kita gunakan di container
Keuntungan menggunakan volume adalah, jika container kita hapus, data akan tetap aman di volume
Cara menggunakan volume di container sama dengan menggunakan bind mount, kita bisa menggunakan parameter --mount, namun dengan menggunakan type volume dan source nama volume
docker volume create mongodata
docker container create --name mongovolume --mount "type=volume,source=mongodata,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=rezar2p --env MONGO_INITDB_ROOT_PASSWORD=rezar2p mongo:latest 
docker container start mongovolume
ketika container nya di hapus data akan aman tersimpan di volume docker