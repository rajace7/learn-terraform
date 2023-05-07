resource "null_resource" "fruits" {
  count = length(fruits)
}

variable "fruits" {
  default =  ["apple", "mango", "orange"]
}