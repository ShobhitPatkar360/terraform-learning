output "get_ssh_for_public" {
  value = <<-EOF
            use the following to get the ssh to ${module.public_web_1.intance_name_from_module}
            ssh -i private-key ubuntu@${module.public_web_1.public_ip_from_module}
  EOF
}

output "get_ssh_for_private" {
  value = <<-EOF
            use the following to get the ssh to ${module.private_web_2.intance_name_from_module}
            ssh -i private-key ubuntu@${module.private_web_2.private_ip_from_module}
  EOF
}
