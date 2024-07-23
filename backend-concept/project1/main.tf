# our terraform configuration
terraform {
  backend "s3" {
    # providing the bucket name
    bucket = "tf-bucket-03"

    # giving name to state file
    key = "terraform.tfstate"

    # provide the region
    region = "us-east-1" 
  }
}



# we are crating our module
module "my-server1" {
  # providing directory of child module
  source = "./modules/webserver"

  # providing values to variables as arguments
  # parent variables have "p" expression
  ami           = var.p-ami-id
  name          = var.p-instance-name
  instance_type = var.p-instance-type
  key_name      = var.p-key-name
  environment   = var.p-env
  sg-id         = aws_security_group.back-sg.id

} # closing moduel block