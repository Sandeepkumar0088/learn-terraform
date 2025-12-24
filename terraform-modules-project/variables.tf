variable "env" {
  default = "dev"
}
variable "ami" {
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "zone_id" {
  default = "Z09354891N46GVLJSDZH0"
}
variable "components" {
  default = {
    frontend  = ""
    mongodb   = ""
    catalogue = ""
    redis     = ""
    user      = ""
    cart      = ""
    mysql     = ""
    shipping  = ""
    rabbitmq  = ""
    payment   = ""
    dispatch  = ""
  }
}