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

data "aws_route53_zone" "zoneid" {
  name         = "rpadaladevops.online"
  private_zone = true
 zone_id = "Z04548223K1NBBTA1AB3D"
}


resource "aws_route53_record" "frontend" {
  zone_id = data.aws_route53_zone.zoneid.zone_id
  name    = "frontend-dev.rpadaladevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

output "zoneid" {
  value = aws_route53_record.frontend.zone_id
}

