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
  ami                     = "ami-087d1c9a513324697"
  instance_type           = "t3.micro"  
}
