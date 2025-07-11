output "public" {
  value = aws_lightsail_instance.server1.public_ip_address
}
output "usename" {
  value = aws_lightsail_instance.server1.username
}

output "ssh-command" {
  value = "ssh -i ${local_file.ssh_key.filename} ${aws_lightsail_instance.server1.username}@${aws_lightsail_instance.server1.public_ip_address}"
}

output "dns-name" {
  value = aws_route53_record.rc1.name
}