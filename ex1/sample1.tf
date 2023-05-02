/*resource "aws_instance" "ec2_1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "ec2_1"
  }
}*/

data "aws_ami" "ec2_1" {

  most_recent      = true
  name_regex       = " Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}

output "aws_ami" {
  value = data.aws_ami.ec2_1.image_id
}