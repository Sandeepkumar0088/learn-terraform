resource "aws_route53_record" "dns" {
  zone_id = var.zone_id
  name = "${var.component}-${var.env}"
  type = "A"
  ttl = 30
  records = [var.private_ip]
}
