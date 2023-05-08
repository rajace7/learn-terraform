
resource "aws_instance" "instance" {
  //for_each = var.components
  //count = length(var.components)
  ami           = data.aws_ami.ami.image_id
  instance_type = var.aws_instance_type

  vpc_security_group_ids = [data.aws_security_group.allow_all.id]

  tags = {
    Name = var.env != "" ? "${var.components_name}-${var.env}" :var.components_name
  }
}

resource "null_resource" "provisioners" {
  depends_on = [aws_instance.instance , aws_route53_record.dns_records]
  //for_each = var.components
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = aws_instance.instance.private_ip
  }

  provisioner "remote-exec" {
    inline = [
      "rm -rf roboshop-shell1",
      "git clone https://github.com/rajace7/roboshop_shell1.git",
      "cd roboshop_shell1",
      "sudo bash ${var.components_name}.sh  ${var.password}"
    ]
  }
}

resource "aws_route53_record" "dns_records" {

  //for_each = var.components
  zone_id = "Z04548223K1NBBTA1AB3D"
  name    = "${var.components_name}-dev.rpadaladevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

