module "dns" {
  source = "./dns"
  for_each = var.components

  zone_id = var.zone_id
  private_ip = module.ec2[each.key].instance.private_ip
  component = each.key
  env = var.env
}

module "ec2" {
  source = "./ec2"
  for_each = var.components

  ami= var.ami
  instance_type = var.instance_type
  vpc_id = module.sec-grp.vpc_id
  component = each.key
}

module "sec-grp" {
  source = "./sec-grp"
}

module "ansible" {
  source = "./ansible"
  depends_on = [ module.dns ]

  for_each   = var.components
  component = each.key
  private_ip = module.ec2[each.key].instance.private_ip
  env = var.env
}