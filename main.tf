resource "aws_instance" "ubuntu_vm" {
  ami           = var.ubuntu_ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }

}
