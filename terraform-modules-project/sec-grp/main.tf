terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
  }
}
resource "aws_security_group" "main" {
  name = "module-allow-all"
  description = "all traffic inbound nd outbound rules"

  tags = {
    Name = "module-allow-all"
  }
}

resource "aws_vpc_security_group_ingress_rule" "inbound" {
  ip_protocol       = "-1"
  cidr_ipv4 = "0.0.0.0/0"
  security_group_id = aws_security_group.main.id
}

resource "aws_vpc_security_group_egress_rule" "inbound" {
  ip_protocol       = "-1"
  cidr_ipv4 = "0.0.0.0/0"
  security_group_id = aws_security_group.main.id
}
