# Readme
mohon untuk menyimpan bundling ini pada directory **$HOME/bigproject**. untuk configurasi setiap folder dapat dibaca pada **Readme.md** pada masing-masing folder. berikut penjelasan setiap foldernya:

## 00initiate
merupakan folder yang runner yang berisi bash untuk dijalankan pada workspace.

## ansible_playbook
merupakan folder yang berisikan rules dan configurasi yang akan digunakan pada ansible.

## bash-script
merupakan folder yang berisi kumpulan bash scrip yang akan dipakai oleh rules pada ansible.

## terraform
merupakan folder yang berisikan rules dan configurasi yang akan digunakan pada Terraform.

## ip-server
merupan file yang berisikan IP dari server yang dibuat oleh terraform.

## landing-page
merupakan folder yang yang berisikan aplikasi landing-page (mohon untuk dimasukkan kedalam repository Github) yang akan digunakan oleh jenkins untuk mendeploy aplikasi.

## pesbuk
merupakan folder yang yang berisikan aplikasi pesbuk (mohon untuk dimasukkan kedalam repository Github) yang akan digunakan oleh jenkins untuk mendeploy aplikasi.

## blog
merupakan folder yang yang berisikan aplikasi blog (mohon untuk dimasukkan kedalam repository Github) yang akan digunakan oleh jenkins untuk mendeploy aplikasi

## fix-k8s-config
merupakan folder yang berisikan config kubernetes yang diperlukan sebelum mendeploy aplikasi.



## STEP BY STEP
* 1. sesuaikan configurasi **terraform**
* 2. sesuaikan configurasi **00initiate**
* 3. Run file didalam folder **00initiate** sesuai urutan
* 4. Run/apply file didalam **fix-k8s-config**
* 5. sesuaikan configurasi file dalam folder **bash-script**
* 6. sesuaikan configurasi **ansible_playbook** dan running sesuai yang telah dijelaskan
* 7. create repository **blog, pesbuk, dan landing-page** di github. kemudian sesuaikan configurasinya
* 8. create job pada jenkins. kemudian test deploy job tersebut.
