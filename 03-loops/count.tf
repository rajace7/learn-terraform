resource "null_resource" "friends" {

  count = length(var.friends)

  provisioner "local-exec" {

    command = "echo friend is ${var.friends[count.index].name}"
  }
}

variable "friends" {
  default = [  "name={rajesh},salary= 0",
    "name =ramesh, salary = 1000",
    "name = {gana}, salary =50000"
  ]
}

