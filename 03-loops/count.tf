resource "null_resource" "friends" {

  count = length(var.friends)

}

output "friends" {
  value = count
}

variable "friends" {
  default = ["raj", "ram", "gana"]
}