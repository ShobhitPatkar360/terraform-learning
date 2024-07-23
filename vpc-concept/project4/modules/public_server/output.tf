output "public_ip_from_module" {
  value = aws_instance.tg_instance.public_ip
}

output "intance_name_from_module" {
  value = aws_instance.tg_instance.tags["Name"]
}