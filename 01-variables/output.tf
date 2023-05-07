output "string1" {
  value = var.string1
}

output "string2" {
  value = "value of string is = ${var.string1}"
}

output "number1" {
  value = var.number1
}

output "list1" {
  value = var.list1[0]
}

output "list1a" {
  value = var.list1[1]
}

output "dict1" {
  value = var.dict1.designation
}

output "dict2" {
  value = var.dict1["designation"]
}