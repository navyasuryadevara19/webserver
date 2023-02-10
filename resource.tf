resource "aws_instance" "webserver" {
  ami           = "ami-0b752bf1df193a6c4"
  instance_type = "t2.micro"
  user_data = <<-EOF

              #!/bin/bash
                  yum update -y
                  yum install httpd -y
                  systemctl start httpd
                  systemctl enable httpd
                  AZ_ZONE=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
                  echo "<h1>Hello World from $(hostname -f) in AZ $AZ_ZONE </h1>"> /var/www/html/index.html

EOF

  tags = {
    Name = "Webserver"
    ENV = "Dev"
  }
  }
