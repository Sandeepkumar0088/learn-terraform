resource "aws_instance" "server" {
  for_each = var.components

  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [var.vpc_id]
  tags = {
    Name = each.key
  }
}
