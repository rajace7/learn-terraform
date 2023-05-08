
resource "aws_instance" "instance" {
  for_each = var.components
  //count = length(var.components)
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]

  vpc_security_group_ids = [data.aws_security_group.allow_all.id]

  tags = {
    Name = each.value["name"]
  }
}

resource "null_resource" "provisioners" {
  depends_on = [aws_instance.instance , aws_route53_record.dns_records]
  for_each = var.components
  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = aws_instance.instance[each.value["name"]].private_ip
  }

  provisioner "remote-exec" {
    inline = [
      "git clone https://github.com/rajace7/learn-terraform.git",
      "cd learn-terraform",
      "sudo bash ${each.value["name"]}.sh"
    ]
  }
}

resource "aws_route53_record" "dns_records" {

  for_each = var.components
  zone_id = "Z04548223K1NBBTA1AB3D"
  name    = "${each.value["name"]}-dev.rpadaladevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[each.value["name"]].private_ip]
}

