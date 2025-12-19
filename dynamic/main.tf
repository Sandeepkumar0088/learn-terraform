resource "aws_security_group" "ex1" {
    name                = "allow_tls"
    description         = "allow tls inbound traffic and all outbound traffic"

    egress {
        from_port       = 22
        to_port         = 22
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 33
        to_port         = 33
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 44
        to_port         = 44
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


}

variable "ports" {
    default= {
        ssh             = 3333
        web             = 6666
        mon             = 9999
    }
}
resource "aws_security_group" "ex2" {
    name                = "allow_all_dynamic_block"
    description         = "allow tls inbound traffic and all outbound traffic"

    egress {
        from_port       = 11
        to_port         = 11
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    dynamic "ingress" {
        for_each = var.ports
        content {
            from_port   = ingress.value
            to_port     = ingress.value
            protocol    = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}
