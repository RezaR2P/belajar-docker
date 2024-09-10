USER adalah instruksi yang digunakan untuk mengubah user atau user group ketika Docker Image dijalankan
Secara default, Docker akan menggunakan user root, namun pada beberapa kasus, mungkin ada aplikasi yang tidak ingin jalan dalam user root, maka kita bisa mengubah user nya menggunakan instruksi USER

User Instruction Format
Berikut adalah format untuk instruksi USER:
USER <user> # mengubah user
USER <user>:<group> # mengubah user dan user group

# docker user
docker build -t chelixx/user user
docker container create --name chelixxuser -p 8080:8080 chelixx/user
docker container start chelixxuser
curl localhost:8080
docker container exec -i -t chelixxuser /bin/sh
whoami