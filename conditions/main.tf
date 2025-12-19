variable "speed" {
    type=number
}

output "speed"{
    value = var.speed>60? "Too High" : "Too Low"
}