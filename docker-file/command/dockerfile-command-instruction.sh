CMD atau Command, merupakan instruksi yang digunakan ketika Docker Container berjalan
CMD tidak akan dijalankan ketika proses build, namun dijalankan ketika Docker Container berjalan
Dalam Dockerfile, kita tidak bisa menambah lebih dari satu instruksi CMD, jika kita tambahkan lebih dari satu instruksi CMD, maka yang akan digunakan untuk menjalankan Docker Container adalah instruksi CMD yang terakhir

Command Instruction Format
Perintah CMD memiliki beberapa format :
CMD command param param
CMD [“executable”, “param”, “param”]
CMD [“param”, “param”], akan menggunakan executable ENTRY POINT, yang akan dibahas di chapter terpisah

docker build -t chelixx/command command
docker image inspect chelixx/command
docker container create --name chelixxcommand chelixx/command
docker container start chelixxcommand
docker container logs chelixxcommand