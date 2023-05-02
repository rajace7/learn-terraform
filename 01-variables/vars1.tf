variable "sample1" {
  default = 100
}

variable "sample2" {
  default = "print the string"
}

output "sample1" {
  value = var.sample1
}

output "sample2" {
  value = "var.sample2"
}

output "sample2a" {
  value = var.sample2
}

output "sameple2b" {
  value = "string value = ${var.sample2}"
}

output "sample1a" {
  value = "numeric value is ${var.sample1}"
}

variable "list1" {
  default = ["rajesh", "gana","rammohan"]
}

output "list1a" {
  value = var.list1[1]
}