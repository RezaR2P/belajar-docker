ENTRYPOINT adalah instruksi untuk menentukan executable file yang akan dijalankan oleh container
Biasanya ENTRYPOINT itu erat kaitannya dengan instruksi CMD
Saat kita membuat instruksi CMD tanpa executable file, secara otomatis CMD akan menggunakan ENTRYPOINT

Entrypoint Instruction Format
Berikut adalah format untuk instruksi ENTRYPOINT:
ENTRYPOINT [“executable”, “param1”, “param2”]
ENTRYPOINT executable param1 param2
Saat menggunakan CMD [“param1”, “param2”], maka param tersebut akan dikirim ke ENTRYPOINT

# docker entrypoint build
docker build -t chelixx/entrypoint entrypoint
docker image inspect chelixx/entrypoint
docker container create --name chelixxentrypoint -p 8080:8080 chelixx/entrypoint
docker container start chelixxentrypoint
docker container stop chelixxentrypoint