# creating security group resource at module level 
resource "aws_security_group" "tg_sg" {
  name        = "my-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.tg_vpc.id

}

# creating an ingress rule for getting ssh
resource "aws_vpc_security_group_ingress_rule" "ingress_for_ssh" {
  security_group_id = aws_security_group.tg_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

# creating an ingress rule for icmp ping
resource "aws_vpc_security_group_ingress_rule" "ingress_for_icmp" {
  security_group_id = aws_security_group.tg_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = -1
  ip_protocol       = "icmp"
  to_port           = -1
}

# creating an egrss rule for all protocols

resource "aws_vpc_security_group_egress_rule" "egress_for_all" {
  security_group_id = aws_security_group.tg_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}


# I had changed the security group for ICMP 