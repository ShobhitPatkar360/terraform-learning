output "get_public_ips" {
  value = <<-EOF

            use the following to get the ssh to ${module.public_web_1.intance_name_from_module}
            ssh -i private-key ubuntu@${module.public_web_1.public_ip_from_module}
            
            name: ${module.private_web_2.intance_name_from_module}
            ip: ${module.private_web_2.private_ip_from_module}

            name: ${module.private_web_3.intance_name_from_module}
            ip: ${module.private_web_3.private_ip_from_module}

            name: ${module.private_web_4.intance_name_from_module}
            ip: ${module.private_web_4.private_ip_from_module}

            name: ${module.private_web_5.intance_name_from_module}
            ip: ${module.private_web_5.private_ip_from_module}
            
  EOF
}

