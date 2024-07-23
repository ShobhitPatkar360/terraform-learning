# subnet association
resource "aws_route_table_association" "tf_route_table_association" {
  subnet_id      = aws_subnet.tf_subnet.id
  route_table_id = aws_route_table.tf_route_table.id
}

# creating resource -> route table
resource "aws_route_table" "tf_route_table" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = var.cidr_block # cidr for our vpc
    gateway_id = "local"        # allow traffic everywhere , inside our vpc boundry
  }

  # in this scenario, humko other vpc cidr pata hai, that's why hum usse hard code karre hai

  route {
    cidr_block         = var.cidrs[0]
    transit_gateway_id = var.tgw_id
  }
  route {
    cidr_block         = var.cidrs[1]
    transit_gateway_id = var.tgw_id
  }
  route {
    cidr_block         = var.cidrs[2]
    transit_gateway_id = var.tgw_id
  }
  route {
    cidr_block         = var.cidrs[3]
    transit_gateway_id = var.tgw_id
  }

  tags = {
    Name = var.route_table_name
  }
}

# VPC attatchment to transit gateway
resource "aws_ec2_transit_gateway_vpc_attachment" "tf_tgw_vpc_attatchment" {
  subnet_ids         = [aws_subnet.tf_subnet.id]
  transit_gateway_id = var.tgw_id
  vpc_id             = aws_vpc.tf_vpc.id

  tags = {
    Name = var.tgw_vpc_attatchment_name
  }
}

# Just like formality -> propagation and association

resource "aws_ec2_transit_gateway_route_table_propagation" "tf_tgw_propagation" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tf_tgw_vpc_attatchment.id
  transit_gateway_route_table_id = var.tgw_route_table_id
}

resource "aws_ec2_transit_gateway_route_table_association" "tf_tgw_association" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tf_tgw_vpc_attatchment.id
  transit_gateway_route_table_id = var.tgw_route_table_id
}