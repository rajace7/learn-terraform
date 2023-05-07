resource "null_resource" "fruits" {
  count = length(fruits)
}

variable "fruits" {
  value = ["apple", "mango", "orange"]
}