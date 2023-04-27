data "aws_security_group" "allow_all" {
  name = "allow-all"
}

output "allow_all" {
  value = data.aws_security_group.allow_all.id
}

output "allow-all1" {
  value = data.aws_security_group.allow_all
}