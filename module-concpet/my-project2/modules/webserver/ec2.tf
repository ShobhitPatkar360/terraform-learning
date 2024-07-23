# creating instance resource
resource "aws_instance" "my-webs" {
  # this time ami is argument in this block & var.ami is child variable
  ami           = var.ami
  instance_type = var.instance_type
  # ____ instance key pair
  key_name = aws_key_pair.my-key-pair.key_name

  # setting the security group, it takes arry
  vpc_security_group_ids = [var.sg-id]

  tags = {
    Name        = var.name
    environment = var.environment
  }
} # closing instance resource block