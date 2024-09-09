EXPOSE adalah instruksi untuk memberitahu bahwa container akan listen port pada nomor dan protocol tertentu
Instruksi EXPOSE tidak akan mempublish port apapun sebenarnya, Instruksi EXPOSE hanya digunakan sebagai dokumentasi untuk memberitahu yang membuat Docker Container, bahwa Docker Image ini akan menggunakan port tertentu ketika dijalankan menjadi Docker Container

Expose Instruction Format
Berikut adalah format untuk instruksi EXPOSE :
EXPOSE port # default nya menggunakan TCP
EXPOSE port/tcp
EXPOSE port/udp

Kode : Hello World Go-Lang Web
https://gist.github.com/khannedy/166be48cabb637b5beefc4e7998f2c7e 
Simpan dalam file main.go

# docker expose
docker build -t chelixx/expose expose
docker image inspect chelixx/expose
docker container create --name chelixxexpose -p 8080:8080 chelixx/expose
docker container start chelixxexpose
buka di browser localhost:8080
docker container stop chelixxexpose