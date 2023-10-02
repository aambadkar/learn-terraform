resource "aws_instance" "frontend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids =["sg-0d40656ca88a46995"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z05576924GZ1MK3S5OBT"
  name    = "frontend.devopsa17.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids =["sg-0d40656ca88a46995"]

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z05576924GZ1MK3S5OBT"
  name    = "backend.devopsa17.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids =["sg-0d40656ca88a46995"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z05576924GZ1MK3S5OBT"
  name    = "mysql.devopsa17.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}