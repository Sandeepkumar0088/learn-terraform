resource "aws_instance" "main" {
  for_each                = var.components

  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.vpc_security_group_ids

  tags = {
    Name                  = each.key
  }
}

resource "aws_route53_record" "record" {
  for_each                = var.components

  zone_id                 = var.zone_id
  name                    = "${each.key}-dev"
  type                    = "A"
  ttl                     = 30
  records                 = [ aws_instance.main[each.key].private_ip ]
}