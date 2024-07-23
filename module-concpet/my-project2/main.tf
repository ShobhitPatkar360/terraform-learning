module "web-server1" {
  # providing directory of child module
  source = "./modules/webserver"

  # providing values to variables as arguments
  # parent variable have "parent" keyword
  ami           = var.parent-ami-id
  instance_type = var.parent-instance-type
  key_name      = var.parent-instance1-key
  name          = var.parent-instance1-name
  environment   = var.parent-instance1-env
  sg-id = aws_security_group.second-sg.id

} # closing module1 block


module "web-server2" {
  # providing directory of child module
  source = "./modules/webserver"

  # providing values to variables as arguments
  # parent variable have "parent" keyword
  ami           = var.parent-ami-id
  instance_type = var.parent-instance-type
  key_name      = var.parent-instance2-key
  name          = var.parent-instance2-name
  environment   = var.parent-instance2-env
  sg-id = aws_security_group.second-sg.id

} # closing module1 block
