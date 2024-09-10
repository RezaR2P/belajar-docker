ARG merupakan instruksi yang digunakan untuk mendefinisikan variable yang bisa digunakan oleh pengguna untuk dikirim ketika melakukan proses docker build menggunakan perintah --build-arg key=value
ARG hanya digunakan pada saat proses build time, artinya ketika berjalan dalam Docker Container, ARG tidak akan digunakan, berbeda dengan ENV yang digunakan ketika berjalan dalam Docker Container
Cara mengakses variable dari ARG sama seperti mengakses variable dari ENV, menggunakan ${variable_name}

Argument Instruction Format
Berikut adalah format untuk instruksi ARG:
ARG key # membuat argument variable
ARG key=defaultvalue # membuat argument variable dengan default value jika tidak diisi

# argument
docker build -t chelixx/arg argument --build-arg app=eza
docker image inspect chelixx/arg
docker container create --name chelixxarg -p 8080:8080 chelixx/arg
docker container start chelixxarg
curl localhost:8080
docker container exec -i -t chelixxarg /bin/sh
docker container logs arg
hapus dulu lalu update di dockerfile ubah jadi env

Kenapa Error?
Hal ini dikarenakan ARG hanya bisa diakses pada waktu build time, sedangkan CMD itu dijalankan pada saat runtime
Jadi jika kita ingin menggunakan ARG pada CMD, maka kita perlu memasukkan data ARG tersebut ke ENV
