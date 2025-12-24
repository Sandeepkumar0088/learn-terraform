variable "sum" {}
variable "sub" {}
variable "mul" {}
variable "div" {}

resource "local_file" "foo"{
  content = {
    addition = "SUM = ${var.sum}"
    Subtraction = "SUB = ${var.sub}"
    Multiplication = "MUL = ${var.mul}"
    Division = "DIV = ${var.div}"
  }
  filename= "/tmp/a.out"
}