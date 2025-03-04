# creating subnet resource
resource "aws_subnet" "tg-subnet" {

  # prividing cidr block
  # mystry - this cidrsubnet() function takes an array
  # use - cidrsubnet(aws_vpc.test_env.cidr_block, 8)
  cidr_block = var.subnet_cird_block

  # providing vpc id
  vpc_id = aws_vpc.tg_vpc.id

  # it makes this a public subnet
  map_public_ip_on_launch = true

  # providing az
  availability_zone = var.availability_zone

  # providing tag
  tags = {
    Name = var.subnet_name
  }
}

