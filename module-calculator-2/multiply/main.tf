variable "a" {}

variable "b" {}

output "multiplication" {
  value = "multiplication=${(var.a)*(var.b)}"
}
