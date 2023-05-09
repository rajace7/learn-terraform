resource "null_resource" "friends" {

  count = length(var.friends)
}

variable "friends" {
  default = [  "r1", "r2","r3"]
}

