
# Creating a resource - ec2 instnce
resource "aws_instance" "app_server" {
  ami                    = "ami-0c14ff330901e49ff"
  instance_type          = "t2.micro"
  tags = {
    Name = "${var.instance_name}"
  }

}




