variable "region" {
  default = "eu-west-1"
}

variable "ami_id" {
  default = "ami-0b752bf1df193a6c4"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "server_ports" {
  type    = list(any)
  default = [22, 80]
}

variable "destination_cidr" {
  default = "0.0.0.0/0"
}

variable "custom_tags" {
  type = map(any)
  default = {
    Name = "Webserver"
    ENV  = "Dev"
  }
}
