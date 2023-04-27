resource "aws_instance" "test_server" {
  ami           = ami-0b5a2b5b8f2be4ec2
  instance_type = "t3.micro"

  tags = {
    Name = "test_server"
  }
}