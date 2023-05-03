variable "friends" {
  default ={
    raja ={
      name = "raja"
      count = 10
    }
    gana = {
      name = "gana"
      count = 20
    }

    rama = {
      name = "rama"
      count = 30
    }

  }
}

resource "null_resource" "friends" {

  for_each = var.friends

  provisioner "local-exec" {
    command = "echo friend name - ${each.key} - ${each.value}"

  }



}