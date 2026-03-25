resource "aws_instance" "roboshop" {
  count = 4
  # you get  var.ami_id from variables.tf file 
  ami           = var.ami_id  

  # you get var.instance_type from variables.tf file
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow_all.id]

  # you get var.ec2_tags from variables.tf file
  tags = {
    name = var.instances[count.index]
  }
}


resource "aws_security_group" "allow_all" {
  # you get var.sg_name from variables.tf file
  name        = var.sg_name

  # you get var.sg_description from variables.tf file
  description = var.sg_description
  
  ingress {
    # you get var.from_port from variables.tf file
    from_port        = var.from_port

    # you get var.to_port from variables.tf file
    to_port          = var.to_port


    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}