data "aws_security_group" "allow-all" {
  name = "allow-all"
}

output "allow-all" {
  value = data.aws_security_group.allow-all.id
}

output "allow-all1" {
  value = data.aws_security_group.allow-all
}