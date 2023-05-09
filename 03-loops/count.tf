resource "null_resource" "friends" {

  count = length(var.friends)

  provisioner "local-exec" {

    command = "echo friend is ${var.friends[count.index].name} - ${var.friends[count.index].value}"
  }
}

variable "friends" {
  default = [  {name ="rajesh", salary = "0"},
    {name ="rajesh1", salary = "1000"},
    {name ="rajesh2", salary = "020034"},

  ]
}

