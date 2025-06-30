resource "aws_route53_record" "rc1" {
  zone_id = "Z07319432S1OCIK9I2AHR"
  type = "A"
  ttl = 300
  name =  "resume.temi7logistics.com"
  records = [ aws_lightsail_instance.server1.public_ip_address]
}