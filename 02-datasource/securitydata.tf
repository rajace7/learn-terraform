data "aws_security_group" "selected" {
  name = "allow_all"
}

output "aws_security_group" {
  value = data.aws_security_group.selected.id
}