resource "aws_instance" "server" {
  for_each      = var.components

  ami           = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [aws_security_group.sec[each.key].id]
  tags = {
    Name        = each.key
  }
}

resource "aws_route53_record" "dns" {
  for_each      = var.components

  zone_id       = var.zone_id
  name          = "${each.key}-${var.env}"
  ttl           = 30
  type          = "A"
  records       = [aws_instance.server[each.key].private_ip]
}

# resource "null_resource" "terraform" {
#   depends_on = [aws_instance.server,aws_route53_record.dns]
#
#   for_each = var.components
#
#   provisioner "remote-exec" {
#     connection {
#       type = "ssh"
#       user = "ec2-user"
#       password = "DevOps321"
#       host = aws_instance.server.private_ip
#     }
#     inline = [
#       "sudo dnf install python3.13-pip -y",
#       "sudo pip3.13 install ansible",
#       "ansible-pull -i localhost, -U https://github.com/Sandeepkumar0088/roboshop-ansible-roles-v2.git main.yml -e component=${each.key} -e env=${var.env}"
#     ]
#   }
# }