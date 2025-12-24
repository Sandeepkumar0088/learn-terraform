module "dns" {
  source = "./dns"
  zone_id = var.zone_id
  private_ip = module.ec2.private_ip
  components = var.components
  env = var.env
}

module "ec2" {
  source = "./ec2"
  ami= var.ami
  instance_type = var.instance_type
  vpc_id = module.sec-grp.vpc_id
}

module "sec-grp" {
  source = "./sec-grp"
}