resource "aws_security_group" "sg-webserver"{
    description = "HTTP Access from web and SSH"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
     egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # All traffic
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "webServer-Ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  key_name = var.key-id
  vpc_security_group_ids = [aws_security_group.sg-webserver.id]
  user_data = file(var.user-data)
  tags = {
    "Name" = "webServer-Ec2"
  }
}