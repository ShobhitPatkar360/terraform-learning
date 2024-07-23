# providing resource type and resource name
resource "aws_instance" "my-web"{
  # providing ami
  ami = var.ami

  # providing instance type
  instance_type = var.instance_type
  # providing key pair
  key_name = var.key_name
  # prividing sg
  vpc_security_group_ids = [var.sg-id]

  # prividing tags - name and env
  tags = {
    Name        = var.name
    Environment = var.environment
  }
} # closing resource block