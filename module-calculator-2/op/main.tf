variable "sum" {}
variable "sub" {}
variable "mul" {}
variable "div" {}

resource "local_file" "mad"{
  content = <<EOF
  ${var.sum}
  ${var.sub}
  ${var.mul}
  ${var.div}
  EOF
  filename= "/tmp/a.out"
}