resource "null_resource" "fruits" {
  count = length(null_resource.fruits)
}

variable "fruits" {
  default =  ["apple", "mango", "orange"]
}