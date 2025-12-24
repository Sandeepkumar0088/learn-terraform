variable "vpc_security_group_ids" {
  default = "sg-039df2e97e51ebc17"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami" {
  default = "ami-09c813fb71547fc4f"
}

variable "zone_id" {
  default = ""
}

variable "components"  {
  default = {
    frontend = "",
    mongodb  = ""
    catalogue = ""
    redis = ""
    user = ""
    cart = ""
   }
}