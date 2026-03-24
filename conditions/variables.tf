variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "AMI ID "
}


variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
  default = {
    Name = "HelloWorld"
    Purpose = "variables-demo"
  }
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
  default = "Allow TLS inbound traffic and all outbound traffic"
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
  default = {
    Name = "allow-all"
  }
}


variable "environment" {
  default = "dev"
}