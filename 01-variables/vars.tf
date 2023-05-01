variable "sample_string" {
  default = "hello world"
}

output "sample_string" {
  value = var.sample_string
}

variable "apple" {
  default = " fruit is apple"
}

output "apple" {
  value = var.apple
}

variable "apple_dicto" {
  default = {
    number1=100
    number2=1000
    string1 = "hello rajesh"
    boolean1 = false

  }
}

output "mango_dict0" {
  value = var.apple_dicto["number2"]

}

output "cat" {
  value =  var.apple_dicto["number1"]
}

variable "dict" {
  default = {
    n1 = 100
    n2 = 123.94
    s1 = "string example"
    boolean = true

  }
}

output "dict" {
  value = var.dict.n2
}

output "dict1" {
  value = var.dict.s1
}

variable "list" {
  default = [
    100,
    "string1",
    1003.034,
    true
  ]
}

output "list1" {
  value = var.list[2]
}

variable "string1" {
  default = "i like mango fruit"
}

output "string1" {
  value = var.string1
}

variable "numeric1" {
  default = 100
}
output "numeric1" {
  value = var.numeric1
}