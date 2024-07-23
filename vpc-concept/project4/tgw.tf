# we are going to create a transit gateway
resource "aws_ec2_transit_gateway" "tf_tgw" {
  description                     = "I like alpenlibe lolipop"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"

  tags = {
    Name = "tgw_from_tf"
  }
}

# may by vpc to transit gateway attatchment is iski route table mei entry ho jati hogi
resource "aws_ec2_transit_gateway_route_table" "tf_tgw_route_table" {
  transit_gateway_id = aws_ec2_transit_gateway.tf_tgw.id
}

