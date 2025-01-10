variable "instance_type" {
  description = "Type of instance"
}
variable "instance_name" {
  description = "Name of the instance"
}
variable "ubuntu_ami" {
  description = "Ubuntu AMI"
}
variable "region" {
  description = "AWS region"
}

variable "vpc_cidr" {
  description = "Value of the VPC CIDR block"
}

variable "vpc_name" {
  description = "Name of the VPC"
}

variable "vpc_subnet" {
  description = "Value of the VPC subnet"
}

variable "key_name" {
  description = "Name of the key pair"
  default     = "tf-project"
}