module "public_web_1" {
  # providing directory of child module
  source = "./modules/public_server"
  # providing values to variables as arguments
  # parent variable have "parent" keyword
  ami               = data.aws_ami.tf_ubuntu.id
  instance_type     = "t2.micro"
  key_name          = var.p_key_name
  instance_name     = "public_instance_1_from_tf"
  env               = "prod"
  vpc_name          = "vpc_1_from_tf"
  sg_name           = "sg_1_from_tf"
  igw_name          = "igw_1_from_tf"
  route_table_name  = "route_table_1_from_tf"
  cidr_block        = "10.11.0.0/16"
  subnet_cird_block = "10.11.0.0/24"
  subnet_name       = "public_subnet_1_from_tf"


  # giving transit gateway id
  tgw_id = aws_ec2_transit_gateway.tf_tgw.id

  # giving cidrs for other vpc for tgw attatchments
  cidrs = ["10.12.0.0/16", "10.13.0.0/16", "10.14.0.0/16", "10.15.0.0/16"]

  # giving name to transit attatchment
  tgw_vpc_attatchment_name = "tgw_vpc_attatchment_to_vpc_1"
  
  # passing transit gateway route table id
  tgw_route_table_id = aws_ec2_transit_gateway_route_table.tf_tgw_route_table.id


  

} # closing module1 block



module "private_web_2" {
  source            = "./modules/private_server"
  ami               = data.aws_ami.tf_ubuntu.id
  key_name          = var.p_key_name
  instance_name     = "private_intance_2_from_tf"
  env               = "test"
  cidr_block        = "10.12.0.0/16"
  vpc_name          = "vpc_2_from_tf"
  subnet_cird_block = "10.12.0.0/24"
  subnet_name       = "private_subnet_2_from_tf"
  sg_name           = "sg_2_from_tf"

  # giving name to route table
  route_table_name = "rt_2_from_tf"

  # giving cidrs for other vpc for tgw attatchments
  cidrs = ["10.11.0.0/16", "10.13.0.0/16", "10.14.0.0/16", "10.15.0.0/16"]

  # giving transit gateway id
  tgw_id = aws_ec2_transit_gateway.tf_tgw.id


  # giving name to transit attatchment
  tgw_vpc_attatchment_name = "tgw_vpc_attatchment_to_vpc_2"

  # passing transit gateway route table id
  tgw_route_table_id = aws_ec2_transit_gateway_route_table.tf_tgw_route_table.id

}

module "private_web_3" {
  source            = "./modules/private_server"
  ami               = data.aws_ami.tf_ubuntu.id
  key_name          = var.p_key_name
  instance_name     = "private_intance_3_from_tf"
  env               = "test"
  cidr_block        = "10.13.0.0/16"
  vpc_name          = "vpc_3_from_tf"
  subnet_cird_block = "10.13.0.0/24"
  subnet_name       = "private_subnet_3_from_tf"
  sg_name           = "sg_3_from_tf"


  # giving name to route table
  route_table_name = "rt_3_from_tf"


  # giving cidrs for other vpc for tgw attatchments
  cidrs = ["10.11.0.0/16", "10.12.0.0/16", "10.14.0.0/16", "10.15.0.0/16"]

  # giving transit gateway id
  tgw_id = aws_ec2_transit_gateway.tf_tgw.id


  # giving name to transit attatchment
  tgw_vpc_attatchment_name = "tgw_vpc_attatchment_to_vpc_3"

  # passing transit gateway route table id
  tgw_route_table_id = aws_ec2_transit_gateway_route_table.tf_tgw_route_table.id

}

module "private_web_4" {
  source            = "./modules/private_server"
  ami               = data.aws_ami.tf_ubuntu.id
  key_name          = var.p_key_name
  instance_name     = "private_intance_4_from_tf"
  env               = "test"
  cidr_block        = "10.14.0.0/16"
  vpc_name          = "vpc_4_from_tf"
  subnet_cird_block = "10.14.0.0/24"
  subnet_name       = "private_subnet_4_from_tf"
  sg_name           = "sg_4_from_tf"

  # giving name to route table
  route_table_name = "rt_4_from_tf"


  # giving cidrs for other vpc for tgw attatchments
  cidrs = ["10.11.0.0/16", "10.12.0.0/16", "10.13.0.0/16", "10.15.0.0/16"]

  # giving transit gateway id
  tgw_id = aws_ec2_transit_gateway.tf_tgw.id


  # giving name to transit attatchment
  tgw_vpc_attatchment_name = "tgw_vpc_attatchment_to_vpc_4"

  # passing transit gateway route table id
  tgw_route_table_id = aws_ec2_transit_gateway_route_table.tf_tgw_route_table.id

}

module "private_web_5" {
  source            = "./modules/private_server"
  ami               = data.aws_ami.tf_ubuntu.id
  key_name          = var.p_key_name
  instance_name     = "private_intance_5_from_tf"
  env               = "test"
  cidr_block        = "10.15.0.0/16"
  vpc_name          = "vpc_5_from_tf"
  subnet_cird_block = "10.15.0.0/24"
  subnet_name       = "private_subnet_5_from_tf"
  sg_name           = "sg_5_from_tf"


  # giving name to route table
  route_table_name = "rt_5_from_tf"


  # giving cidrs for other vpc for tgw attatchments
  cidrs = ["10.11.0.0/16", "10.12.0.0/16", "10.13.0.0/16", "10.14.0.0/16"]

  # giving transit gateway id
  tgw_id = aws_ec2_transit_gateway.tf_tgw.id


  # giving name to transit attatchment
  tgw_vpc_attatchment_name = "tgw_vpc_attatchment_to_vpc_5"

  # passing transit gateway route table id
  tgw_route_table_id = aws_ec2_transit_gateway_route_table.tf_tgw_route_table.id


}