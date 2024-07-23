# creating key pair resource - module ka resource
resource "aws_key_pair" "my-key-pair" {
  # we will give distict keys uing different names
  key_name = var.key_name

  # testing - reading file of external directory
  public_key = file("${path.module}/../../public-key.pub")
} # closing key pair resource block