data "aws_ami" "ami" {
    filter {
        name    =  "name"
        values  =  [ "RHEL-9-DevOps-Practice" ]
    }
    owner = [ "973714476881" ]
}

output "d_s" {
    values   =   aws_ami.ami.ami
}