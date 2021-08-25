variable "name" {
  default = "Server"
}

variable "ami" {
  type    = string
  default = "ami-09e67e426f25ce0d7"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "subnet_id_for_ec2" {
}

variable "vpc_security_group_id_for_ec2" {
}