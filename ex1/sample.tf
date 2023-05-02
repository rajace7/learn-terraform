
/*data "aws_security_group" "allow_all" {
  name = "allow_all"
}

data "aws_ami" "testec2" {
  most_recent = true
  owners = ["973714476881"]
}

resource "aws_instance" "testec2" {
  ami           = data.aws_ami.testec2.image_id
  instance_type = "t3.micro"

  vpc_security_group_ids = [ data.aws_security_group.allow_all.id ]


  tags = {
    Name = "testec2"
  }
}


output "testec2" {
  value = data.aws_ami.testec2.image_id
}

output "allow_all" {
  value = data.aws_security_group.allow_all.id
}
*/

resource "aws_instance" "test" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = var.instance_type
  vpc_security_group_ids = [ data.aws_security_group.test.id ]

  tags = {
    Name = "ec2instance_test"
  }
}


data "aws_ami" "test" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "test" {
  value = data.aws_ami.test.image_id
}


data "aws_security_group" "test" {
  name = "allow_all"
}

output "vpc_id" {
  value = data.aws_security_group.test.id
}
