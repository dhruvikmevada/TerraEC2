output "public_ip" {
  sensitive = true
  value     = aws_instance.ubuntu_vm.public_ip
}

output "instance_id" {
  sensitive = true
  value     = aws_instance.ubuntu_vm.id
}

output "vpc_id" {
  sensitive = true
  value     = aws_vpc.terra-vpc.id
}

output "subnet_id" {
  sensitive = true
  value     = aws_subnet.terra-vpc-subnet.id
}