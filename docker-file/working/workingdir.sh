WORKDIR adalah instruksi untuk menentukan direktori / folder untuk menjalankan instruksi RUN, CMD, ENTRYPOINT, COPY dan ADD
Jika WORKDIR tidak ada, secara otomatis direktorinya akan dibuat, dan selanjutnya setelah kita tentukan lokasi WORKDIR nya, direktori tersebut dijadikan tempat menjalankan instruksi selanjutnya
Jika lokasi WORKDIR adalah relative path, maka secara otomatis dia akan masuk ke direktori dari WORKDIR sebelumnya
WORKDIR juga bisa digunakan sebagai path untuk lokasi pertama kali ketika kita masuk ke dalam Docker Container

Working Directory Instruction Format
Berikut adalah format untuk instruksi WORKDIR :
WORKDIR /app # artinya working directory nya adalah /app
WORKDIR docker # sekarang working directory nya adalah /app/docker
WORKDIR /home/app # sekarang working directory nya adalah /home/app

Golang Web Hello World
https://gist.github.com/khannedy/9262c7784a9ef65ced9dac712822a853
Simpan dalam file main.go

# docker workingdir
docker build -t chelixx/workdir working
docker container create --name chelixxworkdir -p 8080:8080 chelixx/workdir
docker container start chelixxworkdir
docker container exec -i -t chelixxworkdir /bin/sh
docker container stop chelixxworkdir