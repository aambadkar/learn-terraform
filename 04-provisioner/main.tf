resource "null_resource" "test"{
 provisioner "local-exec"{

   command = "echo hello world"
 }
}
 # BUNCH OF COMMANDS

resource "null_resource" "test"{
 provisioner "local-exec"{
   command = <<EOF
  echo hello world
  ls
  pwd
  EOF
 }
}