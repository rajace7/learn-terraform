resource "null_resource" "friends" {

  count = length(var.friends)

  provisioner "local-exec" {

    command = "echo ${count}"
  }
}

variable "friends" {
  default = [  "r1", "r2","r3"]
}

