resource "aws_instance" "frontend-dev" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"

  tags = {
    Name = "frontend-dev"
  }
}

output "frontend-dev-ami" {
  value = aws_instance.frontend-dev.ami
}

output "frontend-dev-amiid" {
  value = aws_instance.frontend-dev.id
}

output "a1" {
  value = aws_instance.frontend-dev.tags
}