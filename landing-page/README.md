# Readme
ini adalah source code untuk landing-page

* buat sebuah repository digithub kemudian push file yang ada di folder ini ke repository github tersebut.

## Configurasi Jenkinsfile
terdapat 2 file jenkinsfile pada folder ini yaitu **p-Jenkins-shell dan s-Jenkins-shell**. berikut cara configurasinya:
```
baris 1 : heryslty      ---> diganti dengan user dockerhub yang diinginkan
baris 2 : ...-jenkins-lp  ---> disesuaikan dengan nama docker image yang diinginkan
baris 8 : url github    ---> disesuaikan dengan url dari repositoy github untuk folder ini
```
---

## Running on local
untuk menjalankan container di local dapat dijalankan command berikut pada directory folder ini:
```
docker build -t test/ladingpage:latest .
docker run -d -p 8082:80 -v lokasi/folder/ini:/usr/share/nginx/html/ --name test-LP test/ladingpage:latest
```
kemudian buka browser masuk ke url `localhost:8082`
