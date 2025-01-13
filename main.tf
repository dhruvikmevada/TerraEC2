resource "aws_instance" "ubuntu_vm" {
  ami           = var.ubuntu_ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
  subnet_id              = aws_subnet.terra-vpc-subnet.id
  vpc_security_group_ids = [aws_security_group.terra-sec-group.id]
  key_name               = var.key_name
  user_data              = file("scripts/install_apache.sh")
}
