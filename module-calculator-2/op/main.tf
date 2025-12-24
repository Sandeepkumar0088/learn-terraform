variable "sum" {}
variable "sub" {}
variable "mul" {}
variable "div" {}

resource "local_file" "foo"{
  content = <<EOF
  ${var.sum}
  ${var.sub}
  ${var.mul}
  ${var.div}
  EOF
  filename= "/tmp/a.out"
}