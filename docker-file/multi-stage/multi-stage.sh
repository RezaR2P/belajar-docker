Masalah Dengan Image Size
Saat kita membuat Dockerfile dari base image yang besar, secara otomatis ukuran Image nya pun akan menjadi besar juga
Oleh karena itu, usahakan selalu gunakan base image yang memang kita butuhkan saja, jangan terlalu banyak menginstall fitur di Image padahal tidak kita gunakan

Contoh Solusi Dengan Image Size Besar
Sebelumnya kita menggunakan bahasa pemrograman Go-Lang untuk membuat web sederhana.
Sebenarnya, Go-Lang memiliki fitur untuk melakukan kompilasi kode program Go-Lang menjadi binary file, sehingga tidak membutuhkan Image Go-Lang lagi
Kita bisa melakukan proses kompilasi di laptop kita, lalu file binary nya yang kita simpan di Image, dan cukup gunakan base image Linux Alpine misal nya
Namun pada kasus Go-Lang, kita di rekomendasikan melakukan kompilasi file binary di sistem operasi yang sama, pada kasus ini saya menggunakan Mac, sedangkan ingin menggunakan Image Alpine, jadi tidak bisa saya lakukan

Multi Stage Build
Docker memiliki fitur Multi Stage Build, dimana dalam Dockerfile, kita bisa membuat beberapa Build Stage atau tahapan build
Seperti kita tahu, bahwa di awal build, biasanya kita menggunakan instruksi FROM, dan di dalam Dockerfile, kita bisa menggunakan beberapa instruksi FROM
Setiap Instruksi FROM, artinya itu adalah build stage
Hal build stage terakhir adalah build stage yang akan dijadikan sebagai Image
Artinya, kita bisa memanfaatkan Docker build stage ini untuk melakukan proses kompilasi kode program Go-Lang kita

# docker build multi-stage
docker build -t chelixx/multi-stage multi-stage
docker image ls
docker container create --name chelixxmulti-stage -p 8080:8080 chelixx/multi-stage 
docker container start chelixxmulti-stage
docker container ls
curl localhost:8080
