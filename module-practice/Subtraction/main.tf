variable "a" {}
variable "b" {}

output "sub" {
  value = "${var.a - var.b}"
}