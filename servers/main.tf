resource "aws_instance" "frontend" {
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-039df2e97e51ebc17"]

  tags = {
    Name                  = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id                 = "Z09354891N46GVLJSDZH0"
  name                    = "frontend-dev"
  type                    = "A"
  ttl                     = 30
  records                 = [ aws_instance.frontend.private_ip ]
}

resource "aws_instance" "backend" {
  ami                     = "ami-09c813fb71547fc4f"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = ["sg-039df2e97e51ebc17"]

  tags = {
    Name                  = "backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id                 = "Z09354891N46GVLJSDZH0"
  name                    = "${aws_instance.backend.tags["Name"]}-dev"
  type                    = "A"
  ttl                     = 30
  records                 = [ aws_instance.frontend.private_ip ]
}