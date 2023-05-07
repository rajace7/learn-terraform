resource "null_resource" "friends" {

  count = length(var.friends)

}

output "friends" {
  value = length(var.friends)
}

variable "friends" {
  default = ["raj", "ram", "gana"]
}