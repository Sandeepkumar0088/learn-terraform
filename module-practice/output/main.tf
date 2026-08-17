variable "sum" {}
variable "sub" {}

resource "local_file" "calculator" {
  content = <<EOF
  ${var.sum}
  ${var.sub}
    EOF
  filename = "/tmp/a.out"
}