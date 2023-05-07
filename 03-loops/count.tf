resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = " fruit is ${var.fruits[count.index]}"
  }
}

variable "fruits" {
  default =  ["apple", "mango", "orange"]
}