# Creating a resource - ec2 instnce 
resource "aws_instance" "app_server" {
  ami                    = "ami-06c68f701d8090592"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.my_key_pair.key_name
  vpc_security_group_ids = ["${aws_security_group.my-sg-tf.id}"]
  tags = {
    Name = "Instance from terraform"
  }

}

