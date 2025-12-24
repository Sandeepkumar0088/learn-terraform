variable "a" {}

variable "b" {}

output "addition" {
  value = "addition = ${var.a+var.b}"
}
