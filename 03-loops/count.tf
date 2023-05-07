resource "null_resource" "friends" {

  count = length(var.friends)

provisioner "local-exec" {
  command = "echo friend name is ${var.friends[count.index]}"

}

}

output "friends" {
  value = length(var.friends)
}

variable "friends" {
  default = ["raj", "ram", "gana"]
}