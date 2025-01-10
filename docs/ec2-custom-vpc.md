# Setting up EC2 in a Custom VPC

## 1. Create a VPC
1. Navigate to VPC Dashboard in AWS Management Console
2. Click **Create VPC**
3. Configure the following:
   - Name tag: `my-custom-vpc`
   - IPv4 CIDR block: `192.168.0.0/16`
   - Tenancy: Default

## 2. Create a Subnet
1. In VPC Dashboard → Subnets → **Create subnet**
2. Configure:
   - VPC ID: Select `my-custom-vpc`
   - Subnet name: `my-custom-subnet`
   - Availability Zone: Choose an AZ (e.g., us-east-1a)
   - IPv4 CIDR block: `192.168.1.0/24`

## 3. Create an Internet Gateway
1. Navigate to Internet Gateways → **Create internet gateway**
2. Set Name tag: `my-igw`
3. Attach to VPC:
   - Select `my-igw`
   - Actions → Attach to VPC → Choose `my-custom-vpc`

## 4. Update Route Table
1. In Route Tables:
   - Select route table associated with your VPC
   - Edit routes:
     ```
     Destination: 0.0.0.0/0
     Target: my-igw
     ```
2. Associate with subnet:
   - Go to Subnet associations
   - Select `my-custom-subnet`

## 5. Create Security Group
1. EC2 Dashboard → Security Groups → **Create security group**
2. Configure:
   - Name: `my-sg`
   - VPC: `my-custom-vpc`
3. Inbound Rules:
   | Type    | Port | Source    |
   |---------|------|-----------|
   | SSH     | 22   | Your IP   |
   | HTTP    | 80   | 0.0.0.0/0 |
   | HTTPS   | 443  | 0.0.0.0/0 |

## 6. Launch EC2 Instance
1. EC2 Dashboard → **Launch Instances**
2. Configure:
   - Name: `my-ec2-instance`
   - AMI: Amazon Linux 2 or Ubuntu
   - Instance type: t2.micro
   - Network settings:
     - VPC: `my-custom-vpc`
     - Subnet: `my-custom-subnet`
     - Auto-assign public IP: Enabled
     - Security group: `my-sg`
   - Create or select key pair

## 7. Verify Connectivity
```bash
ssh -i /path/to/key.pem ec2-user@<public-ip>
```
Verify HTTP/HTTPS access via web browser using the instance's public IP.
