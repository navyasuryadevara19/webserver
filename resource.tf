resource "aws_instance" "webserver" {
  ami           = "ami-0b752bf1df193a6c4"
  instance_type = "t2.micro"
  }
