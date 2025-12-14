variable "env" {
    type = "string"
    default = "abc"
}

output "env" {
    value = var.env
}

output "env" {
    value = "${var.env}123"
}