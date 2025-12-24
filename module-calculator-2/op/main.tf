variable "sum" {}
variable "sub" {}
variable "mul" {}
variable "div" {}

resource "local_file" "foo"{
  content = {
    addition = var.sum
    Subtraction = var.sub
    Multiplication = var.mul
    Division = var.div
  }
  filename= "/tmp/a.out"
}