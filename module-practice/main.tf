module "addition" {
  source  =   "./addition"
  a       =   var.a
  b       =   var.b
}

module "subtraction" {
  source  =   "./Subtraction"
  a       =   var.a
  b       =   var.b
}

module "output" {
  source  =   "./output"
  sum     =   module.addition.sum
  sub     =   module.subtraction.sub
}

variable "a" {
  default = 10
}

variable "b" {
  default = 20
}


