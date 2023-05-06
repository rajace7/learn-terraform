variable "string" {
  default = "hello rajesh"
}

variable "number" {
  default = 100.00300
}

output "string" {
  value = var.string
}

output "number" {
  value = var.number
}

output "string2" {
  value = "value of string = ${var.string}"
}

variable "list11" {
  default = [ 100, "hello rajesh", true ]
}

output "list11" {
  value = var.list11[1]
}

variable "map1" {
  default = {
    string1="hello terraform"
    number1 = 10093.0003
    boolean = true
    string2 = " hello terra2"
    string3 = 100
  }
}

output "map1" {
  value = var.map1.string1
}