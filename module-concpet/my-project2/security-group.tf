resource "aws_security_group" "second-sg" {
  # name can be different
  name        = "second-sg"
  description = "Eating chilli and be chill"

  # we are creating dynamic block for port 
  # 3 magical points - array of values - blueprint of content - using values port.value (iterator = port)
  dynamic "ingress" {

    # we are using for loop, ports - ssh, http, https, mongodb, mysql
    for_each = [22, 80, 443, 3306, 27017]
    # wow we are assingning values from left to right
    iterator = port

    # our blueprint block
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"

      # by mistake I written - cird - wrong
      # this attribut takes array
      cidr_blocks = ["0.0.0.0/0"]
    } # closing content block
  }   # closing dynamic ingress block

    egress {
      from_port = 0
      to_port   = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

}     # closing aws sg resource block











