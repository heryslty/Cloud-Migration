# Readme
pada folder ini berisikan bash untuk instalasi aplikasi, yang akan digunakan oleh ansible dengan melakukan ssh ke server target.

## configurasi `kops-configure.sh`
* `<nama_s3>` rubah dengan nama service S3 yang akan digunakan
* `<nama_cluster.domain_route53>` rubah dengan nama_cluster.domain_route53 contohnya `kube.heryslty.xyz` dimana heryslty.xyz merupakan 
* `<paste_key_id>` rubah dengan key_id dari IAM AWS
* `<paste_secret_access_key>` rubah dengan secret_access_key dari IAM AWS
* `<sesuaikan_region>` rubah dengan region yang akan digunakan

## configurasi `nginx-ssl.sh` dan `nginx.sh`
* pada bagian `pjen.heryslty.xyz` dapat dirubah sesuai dengan domain yang akan didaftarkan ssl
* pada bagian `hery1923@gmail.com` dapat dirubah sesuai dengan email pendaftar
