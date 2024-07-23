# Create a key pair resource with the public key content
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key-pair"
  public_key = file("${path.module}/key-pair/id_rsa.pub")

}