variable "project" {
    default = "electronic-shop"
}



variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "AMI ID "
}


variable "comman_tags" {
  default = {
    Project = "electronic"
    Terraform = "true"
  }
}

variable "sg_name" {
  default = "allow-all"
}

variable "sg_description" {
  default = "allow all porrts"
}

variable "instances" {
  default = ["mongodb", "redis"]
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "sg_tags" {
  default = {}
}

variable "instance_type" {
  default = {
    dev = "t3.micro"
    prod = "t3.small"
  }
}