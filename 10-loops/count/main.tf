resource "aws_instance" "web"{
  ami             = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    name = "helloworld"
  }
}

data "aws_ami" "example"{
  owners = []
  most_recent = true
  name_regrex = "centos-8-DevOps-practice"
}