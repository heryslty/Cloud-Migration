# Readme
ini adalah source code untuk blog

* buat sebuah repository digithub kemudian push file yang ada di folder ini ke repository github tersebut.

## Configurasi Jenkinsfile
terdapat 2 file jenkinsfile pada folder ini yaitu **p-jenkinsfile-wordpress dan s-jenkinsfile-wordpress**. berikut cara configurasinya:
```
baris 1 : heryslty      ---> diganti dengan user dockerhub yang diinginkan
baris 2 : ...-jenkins-wp  ---> disesuaikan dengan nama docker image yang diinginkan
baris 8 : url github    ---> disesuaikan dengan url dari repositoy github untuk folder ini
```
---

# Configurasi deployment
dalam folder ini terdapat 2 file deployment yang akan digunakan oleh kubernetes yaitu **p-dep-wordpress.yml dan s-dep-wordpress.yml**, berikut cara configurasinya:
```
baris ke 34 : database-1.chghgvrwjatk.ap-southeast-1.rds.amazonaws.com  ---> disesuaikan dengan database yang akan digunakan
```

---

# Configurasi svc-secret-configmap
dalam folder ini terdapat 2 file svc-secret-configmap yaitu **p-svc-sc-config-wordpress.yml dan s-svc-sc-config-wordpress.yml**
berikut cara configurasinya:
```
baris 30 : YWRtaW4=     ---> dapat disesuaikan dengan user database yang telah diencrypt
baris 31 : UDd0U3lIcUo= ---> dapat disesuaikan dengan password database yang telah diencrypt
baris 67 : wordpress    ---> dapat disesuaikan dengan nama database yang akan digunakan

baris 94 -101 : dapat disesuaikan generate data dari WordPress secret key generator
