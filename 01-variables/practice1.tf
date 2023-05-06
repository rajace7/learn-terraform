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