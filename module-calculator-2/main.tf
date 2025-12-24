module "division" {
  source  = "./division"
  a       = var.a
  b       = var.b
}

module "multiply" {
  source  = "./multiply"
  a       = var.a
  b       = var.b
}

module "sub" {
  source  = "./sub"
  a       = var.a
  b       = var.b
}

module "sum" {
  source  = "./sum"
  a       = var.a
  b       = var.b
}

module "op" {
  source = "./op"
  sum    = module.sum.addition
  sub    = module.sub.subtraction
  mul    = module.multiply.multiplication
  div    = module.division.division
}

variable "a" {
  default = 15
}
variable "b" {
  default = 3
}
