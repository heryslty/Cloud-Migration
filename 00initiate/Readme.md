# Readme
folder ini berisikan bash file yang akan digunakan sebagai executor dari project ini. silahkan rubah kewenangan file dengan command berikut:
```
chmod +x 01initiate.sh
chmod +x 02creator.sh
```
mohon untuk melakukan configurasi pada **terraform, ansible_playbook, dan bash-script** sebelum mengeksekusi bash yang ada di folder ini.

---
## id_rsa
rubah isi file ini dengan id_rsa existing yang akan digunakan

## id_rsa.pub
rubah isi file ini dengan id_rsa.pub existing yang akan digunakan

## known_hosts
rubah isi file ini dengan known_hosts existing yang akan digunakan

---
## configurasi 01initiate.sh
masuk kedalam folder dan rubah beberapa baris berikut:
* `<paste_key_id>` rubah dengan key_id dari IAM AWS
* `<paste_secret_access_key>` rubah dengan secret_access_key dari IAM AWS
* `<sesuaikan_region>` rubah dengan region yang akan digunakan
* `<nama_s3>` rubah dengan nama service S3 yang akan digunakan
* `<nama_cluster.domain_route53>` rubah dengan nama_cluster.domain_route53 contohnya `kube.heryslty.xyz` dimana heryslty.xyz merupakan domain yang akan digunakan dan telah didaftarkan pada route 53
---
## Running File
kita dapat menjalan bash script tersebut dengan menjalankan command berikut:
```
./01initiate.sh
./02creator.sh
```
jalankan file kedua file tersebut sesuai urutan **01 dan 02**

## Validasi cluster
untuk memvalidasi bahwa cluster yang kita buat telah terbentuk, dapat menjalankan command berikut:
```
kops validate cluster
```
