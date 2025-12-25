resource "aws_security_group" "sec" {
  for_each = var.components
  name = "${each.key}-${var.env}"
  description = "allow all inbound and outbound traffic"

  egress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "-1"
  }

  ingress {
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol = "tcp"
  }

  tags = {
    Name = "${each.key}-${var.env}"
  }
}