variable "ami" {
    default = "ami-09a4a9ce71ff3f20b"
}

variable "instance_type" {
    default = "t2.medium"
}

variable "root_volume_size" {
    default = 40
}

variable "instance_count" {
    default = 1
}

variable "delete_on_termination" {
    default = true
}

variable "volume_type" {
    default = "gp2"
}

variable "key_name" {
    default = "Hery"
}

variable "vpc_security_group_ids" {
    default = ["sg-0903cf8ec5ab2a844"]
}

variable "subnet_id" {
    default = "subnet-e803fa8e" 
}

variable "associate_public_ip_address" {
    default = true
}

variable "tags" {
    type = "map"
    default = {
        "Name" = "jenkins-BP"
        "Purpose" = "devops-Test"
        "Env" = "dev"
    }
}
