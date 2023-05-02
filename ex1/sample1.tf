data "aws_ami" "ec2_1" {

  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}

output "aws_ami" {
  value = data.aws_ami.ec2_1.image_id
}

variable "instance_type" {
  default = "t3.micro"
}

output "instance_type" {
  value = var.instance_type
}

resource "aws_instance" "ec2_1" {
  ami           = data.aws_ami.ec2_1.image_id
  instance_type = var.instance_type

  tags = {
    Name = "ec2_1"
  }
}



