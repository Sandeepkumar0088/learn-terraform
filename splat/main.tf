variable "ports" {
    default= {
        ssh             = 3333
        web             = 6666
        mon             = 9999
    }
}

output "no" {
    value = [for i,j in var.ports: j]
}