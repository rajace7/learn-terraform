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
  value = var.dict.n1
}

output "dict1" {
  value = var.dict.s1
}