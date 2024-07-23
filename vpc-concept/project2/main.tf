module "web1" {
  # providing directory of child module
  source = "./modules/webserver"

  # providing values to variables as arguments
  # parent variable have "parent" keyword
  ami               = data.aws_ami.tf-ubuntu.id
  instance_type     = "t2.micro"
  key_name          = var.p_key_name
  instance_name     = "instance1"
  env               = "prod"
  vpc_name          = "vpc1"
  cidr_block        = "10.10.0.0/16"
  subnet_cird_block = "10.10.0.0/24"
  subnet_name       = "subnet1"

} # closing module1 block



