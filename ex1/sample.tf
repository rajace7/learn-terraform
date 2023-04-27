resource "aws_instance" "testec2" {
  ami           = data.aws_ami.testec2.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "testec2"
  }
}



  data "aws_ami" "testec2" {
    most_recent = true
    owners = ["973714476881"]
  }



output "testec2" {
  value = data.aws_ami.testec2.image_id
}