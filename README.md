[![TerraEC2 CI/CD](https://github.com/dhruvikmevada/TerraEC2/actions/workflows/main.yml/badge.svg)](https://github.com/dhruvikmevada/TerraEC2/actions/workflows/main.yml)

# 🚀 TerraEC2 - AWS EC2 with Custom VPC Provisioning

Hey there! Welcome to TerraEC2 - a comprehensive Terraform project that sets up a fully configured EC2 instance within its own VPC. Complete with automated testing via GitHub Actions, this project creates a production-ready environment with proper networking and security configurations.

## 🎯 What's This All About?

This project automates the deployment of:
- A custom VPC with proper networking setup
- An EC2 instance in a public subnet
- Pre-configured Apache web server
- All necessary security groups and routing

Perfect for:
- Setting up isolated development environments
- Learning AWS networking concepts
- Quick deployment of web servers
- Understanding infrastructure as code
- Testing multi-tier applications

## 🛠️ Before You Start

You'll need:
- Terraform (1.0.0 or newer)
- AWS CLI set up on your machine
- An AWS account with permissions to create stuff
- A GitHub account if you want to use the cool automated testing

## 🚦 Let's Get Started!

Fire up your terminal and run:

```bash
git clone <repository-url>
cd terraec2
```

Then just:
1. `terraform init` to get all the required bits
2. `terraform plan` to see what's going to happen
3. `terraform apply` to make the magic happen!

## Project Structure

```
.
├── .github/workflows/   # GitHub Actions workflow
├── backend.tf          # S3 backend configuration
├── main.tf            # Main EC2 instance configuration
├── vpc.tf             # VPC and networking components
├── outputs.tf         # Output definitions
├── providers.tf       # AWS provider configuration
├── variables.tf       # Variable declarations
├── terraform.tfvars   # Variable values
├── scripts/
│   └── install_apache.sh  # Apache installation script
└── docs/
    └── ec2-custom-vpc.md  # Manual VPC setup guide
```

## Infrastructure Components

- Ubuntu EC2 instance (t2.micro)
- Custom VPC (192.168.0.0/16)
- Public Subnet (192.168.1.0/24)
- Internet Gateway
- Route Table with internet access
- Security Group (SSH, HTTP, HTTPS)
- Apache2 web server
- S3 backend for state management
- Region: us-east-1

## 🤖 GitHub Actions Magic

Every time you push your code, GitHub Actions will automatically:
- Check if your Terraform code looks nice and tidy
- Make sure everything initializes properly
- Validate that nothing's broken
- Show you what would happen if you applied the changes

## Variables

| Name | Description | Default |
|------|-------------|---------|
| region | AWS region | us-east-1 |
| instance_name | Name tag for EC2 | project-planit-vm |
| instance_type | EC2 instance size | t2.micro |
| ubuntu_ami | Ubuntu AMI ID | ami-0e2c8caa4b6378d8c |
| vpc_name | Name of the VPC | project-terraec2-vpc |
| vpc_cidr | VPC CIDR block | 192.168.0.0/16 |
| vpc_subnet | Subnet CIDR block | 192.168.1.0/24 |
| key_name | SSH key pair name | tf-project |

## Outputs

- `public_ip`: The public IP address of the EC2 instance
- `instance_id`: The AWS instance ID
- `vpc_id`: The ID of the created VPC
- `subnet_id`: The ID of the created subnet

## 🔐 Stay Safe Out There!

Quick security tips:
- Keep those AWS credentials secret! Never commit them
- Double-check your security groups
- Keep your Ubuntu AMI up to date
- Set up proper SSH access (nobody likes getting locked out!)

## 💡 Need Help?

If something's not working:
1. Check your AWS credentials
2. Make sure you're in the right region
3. Verify your S3 bucket exists for the backend
4. Feel free to open an issue!

## 🤝 Want to Help?

Got ideas? Found a bug? Want to make this better? Pull requests are super welcome! Just open an issue first so we can chat about the changes.

## 📝 License

MIT - Go wild! Just remember to be awesome and responsible.
