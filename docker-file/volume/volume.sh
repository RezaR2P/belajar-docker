VOLUME merupakan instruksi yang digunakan untuk membuat volume secara otomatis ketika kita membuat Docker Container
Semua file yang terdapat di volume secara otomatis akan otomatis di copy ke Docker Volume, walaupun kita tidak membuat Docker Volume ketika membuat Docker Container nya
Ini sangat cocok pada kasus ketika aplikasi kita misal menyimpan data di dalam file, sehingga data bisa secara otomatis aman berada di Docker Volume

Volume Instruction Format
Berikut adalah format untuk instruksi VOLUME :
VOLUME /lokasi/folder
VOLUME /lokasi/folder1 /lokasi/folder2 …
VOLUME [“/lokasi/folder1”, “/lokasi/folder2”, “...”]

Golang Web dengan Write File
https://gist.github.com/khannedy/d788b386297caf04b39640bec43f3131
Simpan dalam file main.go

# docker volume
docker build -t chelixx/volume volume
docker image inspect chelixx/volume
docker container create --name chelixxvolume -p 8080:8080 chelixx/volume
docker container start chelixxvolume
buka di browser localhost:8080
docker container logs chelixxvolume
docker inspect container chelixxvolume
df0c5add968efc2af7c059bc6ca099c024168331e2f336ab320de73df1e158c7
docker volume ls
docker container stop chelixxvolume