# providing resource type and resource name
resource "aws_key_pair" "my-key-pair" {
  # providing key name
  key_name = var.key_name

  # providing public key from external direstory
  public_key = file("${path.module}/../../public-key.pub")
}