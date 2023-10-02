resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
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