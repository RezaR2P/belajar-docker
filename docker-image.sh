Untuk melihat Docker Image yang terdapat di dalam Docker Daemon, kita bisa menggunakan perintah :
docker image ls
Untuk download Docker Image dari Docker Registry, kita bisa gunakan perintah :
docker image pull namaimage:tag
Kita bisa mencari Docker Image yang ingin kita download di https://hub.docker.com/
docker image pull redis:latest
Jika kita tidak ingin menggunakan Docker Image yang sudah kita download, kita bisa gunakan perintah :
docker image rm namaimage:tag
Hapus Image dengan Force:
Jika kamu ingin menghapus image tanpa menghentikan atau menghapus container terlebih dahulu (meskipun ini tidak disarankan karena bisa menyebabkan masalah dengan container yang terkait), kamu bisa menggunakan opsi -f untuk memaksa penghapusan:
docker image rm -f hello-world:latest