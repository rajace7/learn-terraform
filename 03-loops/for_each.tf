resource "null_resource" "instances" {

  for_each = var.instances

  provisioner "local-exec" {
    command = "echo ${each.key}"
  }
}

variable "instances" {
  default = {
      frontend =
      {
      name="frontend"
        instance_type = "t3.micro"
      }

    mongodb =
    {
      name="mongodb"
      instance_type = "t3.micro"
    }
  }
}