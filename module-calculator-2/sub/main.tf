variable "a" {}

variable "b" {}

output "subtraction" {
  value = "addition = ${(var.a)-(var.b)}"
}
