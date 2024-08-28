Saat kita membuat Docker Image, biasanya perintah pertama adalah melakukan build stage dengan instruksi FROM
FROM digunakan untuk membuat build stage dari image yang kita tentukan
Biasanya, jarang sekali kita akan membuat Docker Image dari scratch (kosongan), biasanya kita akan membuat Docker Image dari Docker Image lain yang sudah ada
Untuk menggunakan FROM, kita bisa gunakan perintah :
FROM image:version
