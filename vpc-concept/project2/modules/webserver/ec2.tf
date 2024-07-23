# copied from internet
resource "aws_instance" "tg-instance" {
  # this time ami is argument in this block & var.ami is child variable
  ami = var.ami

  instance_type = var.instance_type
  # ____ instance key pair
  key_name = var.key_name

  # setting the security group, it takes arry
  vpc_security_group_ids = [aws_security_group.tg_sg.id]

  # providing subnet
  subnet_id = aws_subnet.tg-subnet.id

  # providing tags
  tags = {
    Name        = var.instance_name
    environment = var.env
  }
}

