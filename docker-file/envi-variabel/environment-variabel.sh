ENV adalah instruksi yang digunakan untuk mengubah environment variable, baik itu ketika tahapan build atau ketika jalan dalam Docker Container
ENV yang sudah di definisikan di dalam Dockerfile bisa digunakan kembali dengan menggunakan sintaks ${NAMA_ENV}
Environment Variable yang dibuat menggunakan instruksi ENV disimpan di dalam Docker Image dan bisa dilihat menggunakan perintah docker image inspect
Selain itu, environment variable juga bisa diganti nilainya ketika pembuatan Docker Container dengan perintah docker container create --env key=value

Environment Variable Instruction Format
Berikut adalah format untuk instruksi ENV :
ENV key=value 
ENV ke1=value1 key2=value2 …

Kode : Hello World Go-Lang Web dengan Port
https://gist.github.com/khannedy/e8574fdd9bebfb433a256e7e89f1d5ca 
Simpan dalam file main.go

# docker env
docker build -t chelixx/env envi-variabel
docker image inspect chelixx/env
docker container create --name chelixxenv --env APP_PORT=9099 -p 9099:9099 chelixx/env
docker container start chelixxenv
buka di browser localhost:9099
docker container stop chelixxenv