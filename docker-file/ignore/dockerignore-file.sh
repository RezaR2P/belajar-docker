Saat kita melakukan ADD atau COPY dari file source, pertama Docker akan membaca file yang bernama .dockerignore
File .dockerignore ini seperti file .gitignore, dimana kita bisa menyebutkan file-file apa saja yang ingin kita ignore (hiraukan)
Artinya jika ada file yang kita sebut di dalam file .dockerignore, secara otomatis file tersebut tidak aka di ADD atau di COPY
File .dockerignore juga mendukung ignore folder atau menggunakan regular expression

# Docker ignore
docker build -t chelixx/ignore ignore
docker container create --name chelixxignore chelixx/ignore
docker container start chelixxignore
docker container logs chelixxignore