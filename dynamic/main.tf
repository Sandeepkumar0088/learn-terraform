resource "aws_security_group" "ex" {
    name            = "allow_tls"
    description     = "allow tls inbound traffic and all outbound traffic"

    egress {
        from_port       = 22
        to_port         = 22
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 22
        to_port         = 22
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 1010
        to_port         = 1010
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 0088
        to_port         = 0088
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }
    ingress {
        from_port       = 2392
        to_port         = 2392
        protocol        ="tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

}
