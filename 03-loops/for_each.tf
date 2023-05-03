variable "friends" {
  default ={
    name = "raja"
    name = "gana"
    name = "rama"
  }
}

resource "null_resource" "friends" {

  for_each = var.friends

  provisioner "local-exec" {
    command = "echo ${each.key}"

  }



}