variable "friends" {
  default ={
    name = "raja"
    name = "gana"
    name = "rama"
  }
}

resource "null_resource" "friends" {

  for_each = var.friends

  command = "echo ${each.key}"

}