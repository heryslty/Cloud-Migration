# Readme
modul ini digunakan untuk membuat service RDS pada AWS

---

## configurasi variables.tf
* `db.t2.micro` dapat dirubah sesuai jenis instace RDS yang akan digunakan (*)
* `subnet-......` dapat dirubah sesuai subnate dari VPC yang ada di AWS (**)
* `mysql` dapat dirubah sesuai rds_engine aws (*)
* `5.7` dapat dirubah sesuai versi rds engine (*)
* `terraformrds` dapat dirubah sesuai nama atau identifier yang diinginkan (*)
* `devopscilsy` dapat dirubah sesuai user database yang diinginkan (*)
* `1234567890`dapat dirubah sesuai password database yang diinginkan (*)
* `default.mysql5.7` dapat dirubah sesuai group name database yang diinginkan (*)


## configurasi main.tf
* `ap-southeast-1` sesuaikan dengan region yang digunakan (*)
* `rds-private-subnet-group` dapat dirubah sesuai nama aws_db_subnet_group yang akan dibuat (*) 
* `my-rds-sg` sesuaikan dengan nama security group yang akan dibuat (*)


---
NB : 
```
(*) valuenya dapat sama setiap account aws
(**) valuenya berbeda setiap account aws
```


