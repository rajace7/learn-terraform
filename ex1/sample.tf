data "aws_ami" "ami" {

  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

  resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_instance" "mongod" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mongod-dev"
  }
}

resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue-dev"
  }
}

output "frontend-dev-ami" {
  value = aws_instance.frontend.ami

}

output "mongo-ami" {
  value = aws_instance.mongod.ami

}

output "catalogue-ami" {
  value = aws_instance.catalogue.ami

}

output "catalogue-ip" {
  value = aws_instance.catalogue.private_ip
}

output "mongo-ip" {
  value = aws_instance.mongod.private_ip
}

