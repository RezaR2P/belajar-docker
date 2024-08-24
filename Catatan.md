pertama docker login dulu lalu jika setelah login sukses 
docker image ls
Cannot connect to the Docker daemon at unix:///home/rezar2p/.docker/desktop/docker.sock. Is the docker daemon running?
artinya itu socket cli tidak berjalan dengan benar Coba gunakan perintah berikut untuk mengatur Docker CLI agar menggunakan socket default:
export DOCKER_HOST=unix:///var/run/docker.sock
