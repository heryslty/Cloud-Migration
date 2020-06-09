#!/bin/bash
# sudo apt-get update -y
# wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# sudo apt-get update
# sudo apt-get install openjdk-8-jdk -y
# sudo apt-get install jenkins -y
sudo apt update
sudo apt install nginx software-properties-common -y
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt update
sudo apt install certbot -y
sudo certbot certonly --standalone --non-interactive -d pjen.heryslty.xyz --email hery1923@gmail.com --agree-tos
sudo mkdir /etc/nginx/ssl/
sudo openssl dhparam -out /etc/nginx/ssl/dhparam.pem 2048
sudo service nginx stop
sudo certbot certonly --standalone --non-interactive -d pjen.heryslty.xyz --email hery1923@gmail.com --agree-tos
sudo nginx -t
sudo systemctl restart nginx
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo chmod 666 /var/run/docker.sock