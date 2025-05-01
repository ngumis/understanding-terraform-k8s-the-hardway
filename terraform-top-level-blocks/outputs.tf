################################ 
# GET PUBLIC IP
################################

output "public_ip" {
  description = "Fetch the public IP"
  value       = aws_instance.web.public_ip
}
