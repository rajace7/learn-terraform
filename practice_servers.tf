
resource "aws_instance" "instance" {
  for_each = var.components
  //count = length(var.components)
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]

  vpc_security_group_ids = [data.aws_security_group.allow_all.id]

  tags = {
    Name = each.key
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

