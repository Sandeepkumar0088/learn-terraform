resource "aws_security_group" "ex" {
    name            = "allow_tls"
    description     = "allow tls inbound traffic and all outbound traffic"

    egress {
        from_port   = 0
        to_port     = 0
        protocol    ="-1"
        cidr        = ["0.0.0.0/0"]
    }
}