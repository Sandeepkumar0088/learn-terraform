variable "a" {}

variable "b" {}

output "subtraction" {
  value = "subtraction = ${(var.a)-(var.b)}"
}
