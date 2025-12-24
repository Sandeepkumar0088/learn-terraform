variable "a" {}

variable "b" {}

output "division" {
  value = "Division = ${var.a/var.b}"
}
