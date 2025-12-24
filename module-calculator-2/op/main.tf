variable "sum" {}
variable "sub" {}
variable "mul" {}
variable "div" {}

resource "local_file" "foo"{
  content = var.sum
  filename= "/tmp/a.out"
}