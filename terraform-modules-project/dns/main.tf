resource "aws_route53_record" "dns" {
  for_each = var.components

  zone_id = var.zone_id
  name = "${each.key}-${var.env}"
  type = "A"
  ttl = 30
  records = [var.private_ip]
}