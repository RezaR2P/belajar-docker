HEALTHCHECK adalah instruksi yang digunakan untuk memberi tahu Docker bagaimana untuk mengecek apakah Container masih berjalan dengan baik atau tidak
Jika terdapat HEALTHCHECK, secara otomatis Container akan memili status health, dari awalnya bernilai starting, jika sukses maka bernilai healthy, jika gagal akan bernilai unhealty

Health Check Instruction Format
Berikut adalah format untuk instruksi HEALTHCHECK :
HEALTHCHECK NONE # artinya disabled health check
HEALTHCHECK [OPTIONS] CMD command 
OPTIONS :
--interval=DURATION (default: 30s)
--timeout=DURATION (default: 30s)
--start-period=DURATION (default: 0s)
--retries=N (default: 3)

Simple Golang Web dengan Health Check
https://gist.github.com/khannedy/08d52d1d9b7b41b34535df85509417b4
Simpan dalam file main.go

# docker healthcheck
docker build -t chelixx/health health
docker container create --name chelixxhealth -p 8080:8080 chelixx/health
docker container start chelixxhealth
docker container ls