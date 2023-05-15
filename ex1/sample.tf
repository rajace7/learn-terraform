data "aws_ami" "ami" {
  //executable_users = ["self"]
  most_recent = true
  name_regex  = "  Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

  resource "aws_instance" "frontend-dev" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend-dev"
  }
}

output "frontend-dev-ami" {
  value = aws_instance.frontend-dev.ami

}

