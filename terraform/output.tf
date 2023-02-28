output "PublicIP" {
  value = aws_instance.aws_instance.public_ip
}

output "PrivateIP" {
  value = aws_instance.aws_instance.private_ip
}