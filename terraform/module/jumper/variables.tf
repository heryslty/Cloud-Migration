variable "ami" {
    default = "ami-0f7719e8b7ba25c61"
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
    default = ["sg-0f0be9beb89e1c097"]
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
        "Name" = "jumper"
        "Purpose" = "devops-Test"
        "Env" = "dev"
    }
}
