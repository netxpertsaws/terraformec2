resource "aws_instance" "this" {
  count                   = "3"
  ami                     = "ami-0e86e20dae9224db8"
  instance_type           = "t2.micro"  
}