# Create VPC and Subnet
resource "aws_vpc" "terra-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }

}

resource "aws_subnet" "terra-vpc-subnet" {
  vpc_id            = aws_vpc.terra-vpc.id
  cidr_block        = var.vpc_subnet
  availability_zone = "${var.region}a"
  tags = {
    Name = "${var.vpc_name}-subnet"
  }
  map_public_ip_on_launch = true

}

# Create an internet gateway
resource "aws_internet_gateway" "terra-igw" {
  vpc_id = aws_vpc.terra-vpc.id
  tags = {
    Name = "${var.vpc_name}-igw"
  }
}

# create a route table
resource "aws_route_table" "terra-route-table" {
  vpc_id = aws_vpc.terra-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra-igw.id
  }
  tags = {
    Name = "${var.vpc_name}-route-table"
  }
}


# Associate the route table with the subnet
resource "aws_route_table_association" "terra-route-table-association" {
  subnet_id      = aws_subnet.terra-vpc-subnet.id
  route_table_id = aws_route_table.terra-route-table.id

}

# Create a security group for the instance to allow HTTP, HTTPS, and SSH traffic
resource "aws_security_group" "terra-sec-group" {
  vpc_id = aws_vpc.terra-vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTP traffic"
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow HTTPS traffic"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }

  tags = {
    Name = "${var.vpc_name}-sec-group"
  }
}