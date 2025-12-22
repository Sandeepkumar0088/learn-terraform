resource "aws_instance" "main" {
  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids

  tags = {
    Name                  = "cloud"
  }
}

resource "aws_route53_record" "record" {
  zone_id                 = var.zone_id
  name                    = "${aws_instance.main.tags["Name"]}-dev"
  type                    = "A"
  ttl                     = 30
  records                 = [ aws_instance.main.private_ip ]
}