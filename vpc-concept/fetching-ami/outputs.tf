output "tell-ami-id" {

  value = "This is latest ami id ${data.aws_ami.tf-ubuntu.id}"

}