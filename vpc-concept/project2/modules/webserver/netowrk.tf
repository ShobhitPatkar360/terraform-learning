# subnet association
resource "aws_route_table_association" "tf-route-table-association"{
    subnet_id = aws_subnet.tg-subnet.id
    route_table_id = aws_route_table.tg-route-table.id
}

# creating resource -> route table
resource "aws_route_table" "tg-route-table" {
  vpc_id = aws_vpc.tg_vpc.id

  route {
    cidr_block = var.cidr_block
    gateway_id = "local"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-igw.id
  }

  tags = {
    Name = "my-route-table"
  }
}

# creating resourece -> internet gateway
resource "aws_internet_gateway" "tf-igw" {
    # providing vpc id
    vpc_id = "${aws_vpc.tg_vpc.id}"

    tags = {
      Name = "my-igw"
    }
}

