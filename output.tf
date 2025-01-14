output "public_ip" {
  sensitive = true  // Hides the output value in the Terraform UI and logs for security reasons
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