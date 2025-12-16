data "aws_ami" "ami" {
    filter {
        name    =  "name"
        values  =  [ "RHEL-9-DevOps-Practice" ]
    }
    owners = [ "973714476881" ]
}

output "d_s" {
    value   =   data.aws_ami.ami
}

data "aws_security_group" "selected" {
    filter {
        name    =  "name"
        values  =  [ "allow-all" ]
    }
}

output "sg" {
    value   =   data.aws_security_group.selected
}