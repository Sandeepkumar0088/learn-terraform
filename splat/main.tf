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

variable "fruits" {
    default = {
        apple = {
            price= 100
        },
        banana = {
            price = 200
        },
        citrus = {
            price = 300
        }
    }
}

output "fruit_prices" {
    value = {for x,y in var.fruits:x=>y.price}
}