# Readme
pada folder ini adalah file yang berisikan resources yang diperlukan oleh kubernetes sebelum melakukan deploy menggunakan jenkins.

## Configurasi rule ingress
pada folder ini terdapat 2 rules ingres yaitu **p-rule-ing.yml dan s-rule-ing.yml**. berikut configurasi yang dapat disesuaikan
```
pada baris no 16, 23, dan 30 : dapat disesuaikan dengan domain yang telah dimiliki
```

## Run
kemudian setelah configurasi dilakukan, silahkan eksekusi command berikut untuk mengeply ke kubernetes :
```
kubectl apply -f ns.yml
kubectl apply -f package-ing.yml
kubectl apply -f p-rule-ing.yml
kubectl apply -f s-rule-ing.yml
```

**RESOURCES PADA FOLDER INI DI APPLY SETELAH KOPS TELAH BERHASIL MEMBUAT CLUSTER**
