output "my-instnce-ip" {
  value = <<-EOT
			To get the access use the following command - 
			ssh -i private-key ubuntu@${module.my-server1.instance-ip} \n
			Thankyou, your sincerely \n
			EOT
}