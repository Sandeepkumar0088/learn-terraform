# variable "speed" {
#     type=number
# }
#
# output "speed"{
#     value = var.speed>60? "Too High" : "Too Low"
# }

resource "aws_instance" "main" {
    count  = var.ec2? 1:0
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.type=="small"? "t3.small" : "t3.micro"
    tags = {
        Name = "test"
    }
}

variable "ec2" {
    default=false
}
variable "type" {
    default = "micro"
}