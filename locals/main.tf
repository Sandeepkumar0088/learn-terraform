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

locals {
    fruit_prices = {for x,y in var.fruits:x=>y.price}
}

output "prices" {
    values = locals.fruit_prices
}