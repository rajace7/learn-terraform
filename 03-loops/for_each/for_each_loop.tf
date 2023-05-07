resource "null_resource" "employee" {

  for_each = var.employee

  provisioner "local-exec" {

    command = "echo count is lengh(${var.employee})"
  }


}

variable "employee" {

  default = {
    rajesh = {
      name = "rajesh"
      salary = 902111
      designation = "devops"
      id = 10144
      location = "plano city-texas"

    }
    ganapathi = {
      name = "ganapathi"
      salary = 54558
      designation = "manager"
      id = 10145
      location = "vijayawada"
    }
    rammohan = {

      name = "rammohan"
      salary = 101455
      designation = "sales"
      id = 10140
      location = "kondapalli"
    }
  }
}