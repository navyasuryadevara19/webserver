variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "server_ports" {
  type    = list
  default = [22, 80]
}

variable "destination_cidr" {
  default = "0.0.0.0/0"
}

variable "custom_tags" {
  type = map
  default = {
    Name = "Webserver"
    ENV  = "Dev"
  }
}
