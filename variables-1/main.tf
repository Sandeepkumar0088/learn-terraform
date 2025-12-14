variable "env" {
    type = string
    default = "abc"
}

output "env" {
    value = var.env
}

output "env123" {
    value = "${var.env}123"
}

variable "instance_count" {
    type = number
    default = 11
}

output "instance_count" {
    value = var.instance_count
}

output "instance_count_1" {
    value = "${var.instance_count+1}"
}

output "instance_count_merge" {
    value = "${var.instance_count}.${var.instance_count+11}"
}

variable "enabled" {
    type = bool
    default = true
}

output "enabled" {
    value = var.enabled
}