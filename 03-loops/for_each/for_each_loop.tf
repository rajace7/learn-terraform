resource "null_resource" "employee" {

  for_each = var.employee

  provisioner "local-exec" {

    //command = "echo count is ${length(var.employee)}"

    command = "echo employee name is -${each.id} -${each.key} -${each.value["salary"]} -${each.value["designation"]} -${each.value["name"]}"
  }


}

variable "employee" {

  default = {
    rajesh_p = {
      name = "rajesh"
      salary = 902111
      designation = "devops"
      id = 10144
      location = "plano city-texas"

    }
    ganapathi_s = {
      name = "ganapathi"
      salary = 54558
      designation = "manager"
      id = 10145
      location = "vijayawada"
    }
    rammohan_p = {

      name = "rammohan"
      salary = 101455
      designation = "sales"
      id = 10140
      location = "kondapalli"
    }
  }
}