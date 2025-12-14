# String
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

# Number

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

# boolean

variable "enabled" {
    type = bool
    default = true
}

output "enabled" {
    value = var.enabled
}

# lists

variable "list_of_instances" {
    type = list
    default = [ "frontend", "mongodb", "catalogue", "redis", "user", "cart", "mysql", "shipping","rabbitmq", "payment", "dispatch"]
}

output "list_of_instances"{
    value=var.list_of_instances
}

# map

variable "map" {
    type = map
    default = {
        a="string",
        b=54,
        c=true,
        d="list",
        e="map"
    }
}

output "map"{
    value=var.map
}