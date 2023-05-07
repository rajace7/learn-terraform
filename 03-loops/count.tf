resource "null_resource" "fruits" {
  count = length(var.fruits)
}

variable "fruits" {
  default =  ["apple", "mango", "orange"]
}