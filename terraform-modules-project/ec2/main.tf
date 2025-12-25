resource "aws_instance" "server" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [var.vpc_id]
  tags = {
    Name = "${var.component}"
  }
}
