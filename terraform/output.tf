output "PublicIP" {
  value = aws_instance.terraform-name.public_ip
}

output "PrivateIP" {
  value = aws_instance.terraform-name.private_ip
}