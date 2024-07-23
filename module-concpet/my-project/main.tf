
module "web_server_1" {
  source        = "./modules/ec2"
  image_name    = "ubuntu"
  instance_name = "my-server-01"

  sg-id = "${aws_security_group.my-new-sg-tf.id}"
}
module "web_server_2" {
  source        = "./modules/ec2"
  image_name    = "ubuntu"
  instance_name = "my-server-02"
}
