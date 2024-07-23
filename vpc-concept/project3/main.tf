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
  sg_name = "sg_1_from_tf"
  igw_name = "igw_1_from_tf"
  route_table_name = "route_table_1_from_tf"
  cidr_block        = "10.10.0.0/16"
  subnet_cird_block = "10.10.0.0/24"
  subnet_name       = "public_subnet_1_from_tf"

} # closing module1 block



module "private_web_2" {
  source = "./modules/private_server"

  ami = data.aws_ami.tf_ubuntu.id
  key_name = var.p_key_name
  instance_name = "intance_2_from_tf"
  env = "test"

  cidr_block = "10.11.0.0/16"
  vpc_name = "vpc_2_from_tf" 
  subnet_cird_block = "10.11.0.0/24"
  subnet_name = "private_subnet_2_from_tf"
  sg_name = "sg_2_from_tf"
  
}