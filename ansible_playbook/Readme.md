# Readme
pada folder ini digunakan untuk mengconfigurasi server atau instance yang telah dibuat.

## roles
berisikan folder-folder yang memilik job atau fungsi khusus. kita dapat menambahkan sesuai yang dibutuhkan

## ansible.cfg
berisi pengaturan default saat menjalankan ansible


## Configurasi
Berikut beberapa file yang perlu diconfigurasi

### bigproject.yml
merupakan file yang berfungsi sebagai management dari setiap roles yang akan dijalankan, berikut penjelasan dari isi bigproject.yml
```
- name:               #---->> nama dari job
  hosts:              #---->> diisi sesuai host yang akan diconfig
  roles:              #---->> dapat diisi dengan daftar job yang akan digunakan
```

### hosts
merupakan file config yang mendeklarasikan target yang akan diconfig. berikut penjelasan dari setiap baris file ini:
```
[aws] #--->> ini merupakan ID dari hosts yang akan digunakan pada file bigproject.yml
#<Ip target> ansible_connection=ssh ansible_ssh_private_key_file=<directory id.rsa yang akan digunakan> ansible_ssh_user=<user target> 
18.136.197.131 ansible_connection=ssh ansible_ssh_private_key_file=~/.ssh/id_rsa ansible_ssh_user=ubuntu 
```
---

## Running
untuk merunning ansible kita dapat menggunakan command berikut:
```
 ansible-playbook -i hosts bigproject.yml 
```
