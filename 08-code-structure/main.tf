resource "null_resource" "test" {

  provisioner "local-exec" {
    command = "echo hello world - ${var.env} environment"
 }
}

variable "env" {}

#empty state file

terraform {
  backend "s3" {}

}
