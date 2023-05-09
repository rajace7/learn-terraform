resource "null_resource" "friends" {

  count = length(var.friends)

  provisioner "local-exec" {

    command = "echo friend is ${var.friends[count.index]}"
  }
}

variable "friends" {
  default = [  "r1", "r2","r3"]
}

