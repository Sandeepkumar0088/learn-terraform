terraform {
    backend "s3"{
        bucket = "terraform-sandeep0088"
        key    = "sample/terraform.tfstate"
        region = "us-east-1"
    }
}

output "hi" {
    value = "Hello"
}