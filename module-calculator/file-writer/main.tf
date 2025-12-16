variable "sum" {}

module "local_file" "foo" {
    content = "Sum: ${var.sum}"
    filename: "/tmp/a.out"
}