# Creating a security group

resource "aws_security_group" "my-sg-tf" {
  name        = "my-sg-tf"
  description = "Security group for SSH, web, and HTTPS access"

  # we can also create a dynamic block, inside the security group block
  dynamic "ingress" {
    for_each = [22, 80, 443, 3306, 27017]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }

  }

}







#  ingress {
#     from_port = 22
#     to_port   = 22
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Update with specific IP range if needed
#   }

#   ingress {
#     from_port = 80
#     to_port   = 80
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Update with specific IP range if needed
#   }

#   ingress {
#     from_port = 443
#     to_port   = 443
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]  # Update with specific IP range if needed
#   }

#   egress {
#     from_port = 0
#     to_port   = 0
#     protocol = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }