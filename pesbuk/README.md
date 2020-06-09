# Readme
ini adalah source code untuk pesbuk

* buat sebuah repository digithub kemudian push file yang ada di folder ini ke repository github tersebut.

## Configurasi Jenkinsfile
terdapat 2 file jenkinsfile pada folder ini yaitu **p-jenkinsfile dan s-jenkinsfile**. berikut cara configurasinya:
```
baris 1 : heryslty      ---> diganti dengan user dockerhub yang diinginkan
baris 2 : ...-jenkins-fb  ---> disesuaikan dengan nama docker image yang diinginkan
baris 8 : url github    ---> disesuaikan dengan url dari repositoy github untuk folder ini
```
---

# Configurasi deployment
dalam folder ini terdapat 2 file deployment yang akan digunakan oleh kubernetes yaitu **p-dep-fb.yml dan s-dep-fb.yml**, berikut cara configurasinya:
```
baris ke 34 : database-1.chghgvrwjatk.ap-southeast-1.rds.amazonaws.com  ---> disesuaikan dengan database yang akan digunakan
```

---

# Configurasi svc-secret-configmap
dalam folder ini terdapat 2 file svc-secret-configmap yaitu **p-svc-config-sc.yml dan s-svc-config-sc.yml**
berikut cara configurasinya:
```
baris 33 : dbsosmed        ---> dapat disesuaikan dengan nama database yang akan digunakan
baris 53 : YWRtaW4=        ---> dapat disesuaikan dengan user database yang telah diencrypt
baris 54 : UDd0U3lIcUo=    ---> dapat disesuaikan dengan password database yang telah diencrypt
```

## Running on local
untuk menjalankan container di local dapat dijalankan command berikut pada directory folder ini:
```
docker build -t test/pesbuk:latest .
docker run -d -p 8092:80 -v lokasi/dari/folder/sosial-media:/var/www/sosial-media --name test-FB test/pesbuk:latest
```
kemudian buka browser masuk ke url `localhost:8092`
