output "private_ip_from_module" {
  value = aws_instance.tf_instance.private_ip
}

output "intance_name_from_module" {
  value = aws_instance.tf_instance.tags["Name"]
}

