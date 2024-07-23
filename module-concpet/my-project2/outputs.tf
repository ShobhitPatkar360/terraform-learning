output "my-instnce-ip" {
    value = <<-EOF
ssh -i ubuntu@${module.web-server1.instance-ip} \n
ssh -i ubuntu@${module.web-server2.instance-ip} \n
Thankyou \n
EOF
}



# value = " I have 2 ip - ${module.web-server1.instance-ip}  && ${module.web-server2.instance-ip} " 

