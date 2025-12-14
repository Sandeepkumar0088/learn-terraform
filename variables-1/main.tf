variable "env" {
    type = "string"
    default = "abc"
}

output "env" {
    value = var.env
}

output "env123" {
    value = "${var.env}123"
}