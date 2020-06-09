# Readme
modul ini digunakan untuk membuat service intance untuk rancher pada AWS

---

## configurasi variables.tf
* `ami-0f7719e8b7ba25c61` dapat dirubah sesuai dengan nama AMI yang ada di AWS (**)
* `t2.medium` dapat dirubah kapasitas hardisk yang akan digunakan (*)
* `40` dapat disesuaikan dengan size hardisk yang diperlukan (*)
* `1` dapat dirubah sesuai jumlah instace yang akan dibuat (*)
* `gp2` dapat dirubah sesuai jenis hardisk yang diinginkan (*)
* `Hery` dapat dirubah sesuai key pair yang ada di aws (**)
* `sg-0f0be9beb89e1c097`dapat dirubah sesuai security group yang telah ada di account aws (**)
* `subnet-e803fa8e` dapat dirubah sesuai subnet yang telah ada di account aws (**)
* `rancher, devops-Test, dev` dapat disesuaikan dengan tags yang diinginkan (*)

## configurasi main.tf
* `ap-southeast-1` sesuaikan dengan region yang digunakan (*)
* `/home/hery/.ssh/id_rsa` dapat dirubah sesuai dengan lokasi dari id_rsa yang akan digunakan (**) 

---

NB : 
```
(*) valuenya dapat sama setiap account aws
(**) valuenya berbeda setiap account aws
```


