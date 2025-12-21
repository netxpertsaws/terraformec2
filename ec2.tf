terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}



resource "aws_instance" "this" {
  count                   = "1"
  ami                     = "ami-0e86e20dae9224db8"
  instance_type           = "t2.micro"  
}
