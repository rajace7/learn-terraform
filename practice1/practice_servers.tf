data "aws_ami" "ami" {
  #executable_users = ["self"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

  }

output "ami" {
  value = data.aws_ami.ami.image_id
}

data "aws_security_group" "allow_all" {
  name = "allow_all"
}


resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"

  vpc_security_group_ids = [data.aws_security_group.allow_all.id]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mongod" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allow_all.id]

  tags = {
    Name = "mongod"
  }
}

resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [data.aws_security_group.allow_all.id]

  tags = {
    Name = "catalogue"
  }
}

output "allow_all" {
  value = data.aws_security_group.allow_all.id
}

