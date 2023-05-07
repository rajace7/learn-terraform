variable "string1" {
  default = "hello rajesh"
}

variable "number1" {
  default = 100.543
}

variable "list1" {
  default = ["hello rajesh padala", 10033, "devops enginerr", true]
}

variable "dict1" {
  default = {
    name = "Rajesh Padala"
    id = 102545
    designation = "devops"
    salary = 300050.98

  }
}

variable "env" {}