resource "aws_instance" "main" {
  count                   = 2
  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids

  tags = {
    Name                  = var.components[count.index]
  }
}

resource "aws_route53_record" "record" {
  count                   = 2
  zone_id                 = var.zone_id
  name                    = "${var.components[count.index]}-dev"
  type                    = "A"
  ttl                     = 30
  records                 = [ aws_instance.main.private_ip ]
}