#!/bin/bash
sudo apt update
sudo apt upgrad -y
sudo apt install python3-pip -y
sudo pip3 install ansible
sudo apt install unzip -y
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_386.zip
unzip terraform_0.11.13_linux_386.zip
sudo mv terraform /usr/local/bin
sudo apt install awscli -y
echo [default] >> ~/.aws/credentials
echo aws_access_key_id = <paste_key_id> >> ~/.aws/credentials
echo aws_secret_access_key = <paste_secret_access_key> >> ~/.aws/credentials
echo [default] >> ~/.aws/credentials
echo region = <sesuaikan_region> >> ~/.aws/credentials
echo output = json >> ~/.aws/credentials
cp id_rsa ~/.ssh/
cp id_rsa.pub ~/.ssh/
cp known_hosts ~/.ssh/
cd ~/.ssh/
sudo chown $USER:$USER id_rsa* known_hosts
chmod 600 id_rsa
chmod 644 id_rsa.pub known_hosts
ssh-keygen -y -f ~/.ssh/id_rsa
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops
cd
echo export bucket_name=<nama_s3> >> .bashrc
echo export KOPS_CLUSTER_NAME=<nama_cluster.domain_route53> >> .bashrc
echo export KOPS_STATE_STORE=s3://\${bucket_name} >> .bashrc
cd ~/bigproject/00initiate
exec bash
