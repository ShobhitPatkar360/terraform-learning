# providing resource type and resource name
resource "aws_security_group" "back-sg" {
  #   providing name and description 
  name        = "back-sg"
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
}     # closing aws sg resource block