provider "aws" {
  region = "us-east-2"
}



resource "aws_instance" "web" {
  ami           = "ami-0dd0ccab7e2801812"
  instance_type     = "t2.micro"
  key_name          = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = "Launched-via-Terraform"
  }
 
}

