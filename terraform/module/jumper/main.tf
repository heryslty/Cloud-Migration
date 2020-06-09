provider "aws" {
  region     = "ap-southeast-1"
}

resource "aws_instance" "instance-jumper" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  subnet_id = "${var.subnet_id}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  count = "${var.instance_count}"
  root_block_device {
    volume_type           = "${var.volume_type}"
    volume_size           = "${var.root_volume_size}"
    delete_on_termination = "${var.delete_on_termination}"
  }
  tags {
    Name = "${var.tags["Name"]}"
    Purpose = "${var.tags["Purpose"]}"
    Env = "${var.tags["Env"]}"
  }
  volume_tags {
    Name = "${var.tags["Name"]}"
  }

  

   provisioner "remote-exec" {
       inline = [
        "sudo apt update",
        "sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y",
        "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -",
        "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\"",
        "sudo apt update",
        "apt-cache policy docker-ce",
        "sudo apt-get install -y docker-ce",
        "sudo chmod 666 /var/run/docker.sock"
    ]
       connection {
           type = "ssh"
           user = "ubuntu"
           private_key = "${file("/home/hery/.ssh/id_rsa")}"

       }
    }

    provisioner "local-exec" {
        command = "echo IP jumper: ${aws_instance.instance-jumper.public_ip} >> ~/bigproject/ip-server"

    }    
 

}
