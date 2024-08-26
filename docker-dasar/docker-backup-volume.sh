Sayangnya, sampai saat ini, tidak ada cara otomatis melakukan backup volume yang sudah kita buat
Namun kita bisa memanfaatkan container untuk melakukan backup data yang ada di dalam volume ke dalam archive seperti zip atau tar.gz

Tahapan Melakukan Backup
Matikan container yang menggunakan volume yang ingin kita backup
Buat container baru dengan dua mount, volume yang ingin kita backup, dan bind mount folder dari sistem host
Lakukan backup menggunakan container dengan cara meng-archive isi volume, dan simpan di bind mount folder
Isi file backup sekarang ada di folder sistem host
Delete container yang kita gunakan untuk melakukan backup

docker container stop mongovolume
/home/rezar2p/Documents/0-reza/belajar-docker/backup
docker container create --name nginxbackup --mount "type=bind,source=/home/rezar2p/Documents/0-reza/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest
docker container start nginxbackup
docker container exec -i -t nginxbackup /bin/bash
tar cfv /backup/backup.tar.gz /data
exit
docker container stop nginxbackup
docker container rm nginxbackup
docker container start mongovolume

Menjalankan Container Secara Langsung (cara cepat)
Melakukan backup secara manual agak sedikit ribet karena kita harus start container terlebih dahulu, setelah backup, hapus container nya lagi
Kita bisa menggunakan perintah run untuk menjalankan perintah di container dan gunakan parameter --rm untuk melakukan otomatis remove container setelah perintahnya selesai berjalan
docker image pull ubuntu:latest
docker container stop mongovolume
docker container run --rm --name ubuntu --mount "type=bind,source=/home/rezar2p/Documents/0-reza/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cfv /backup/backup-lagi.tar.gz /data