output "public_ip" {
  sensitive = true
  value = aws_instance.ubuntu_vm.public_ip
}

output "instance_id" {
  sensitive = true
  value = aws_instance.ubuntu_vm.id
}
