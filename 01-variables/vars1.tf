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
  value = "index1 name is ${var.list1[1]}"
}

output "list1b" {
  value = "index2 name is ${var.list1[2]}"
}

variable "dictonary" {
  default = {
    name = "rajesh"
    id = 10068
    company = "TCS"
    designation = "devops engineer"
    salary = 4000000.54
  }
}

output "dictonary1a" {
  value = "employee name is ${var.dictonary.name}"
}

output "dictonary1b" {
  value = var.dictonary.designation
}

output "dictonary1c" {
  value = "employee salary is ${var.dictonary.salary}"
}



