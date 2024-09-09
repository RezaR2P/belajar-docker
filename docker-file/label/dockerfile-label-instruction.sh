Instruksi LABEL merupakan instruksi yang digunakan untuk menambahkan metadata ke dalam Docker Image yang kita buat
Metadata adalah informasi tambahan, misal seperti nama aplikasi, pembuat, website, perusahaan, lisensi dan lain-lain
Metadata hanya berguna sebagai informasi saja, tidak akan digunakan ketika kita menjalankan Docker Container

Label Instruction Format
Berikut adalah format instruksi LABEL
LABEL <key>=<value>
LABEL <key1>=<value1> <key2>=<value2> …

# script nya
docker build -t chelixx/label label
docker image inspect chelixx/label
docker container create --name chelixxlabel chelixx/label
docker container start chelixxlabel
docker container logs chelixxlabel