variable "instance_type" {
  description = "Type of instance"
  default = "t2.micro"
}
variable "instance_name" {
  description = "Name of the instance"
  default = "terraec2-instance"
}
variable "ubuntu_ami" {
  description = "Ubuntu AMI"
  default = "ami-0e2c8caa4b6378d8c"
}
variable "region" {
  description = "AWS region"
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "Value of the VPC CIDR block"
  default = "192.168.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default    = "terra-vpc"
}

variable "vpc_subnet" {
  description = "Value of the VPC subnet"
  default = "192.168.16.0/24"
}

variable "key_name" {
  description = "Name of the key pair"
  default     = "tf-project"
}