# 🚀 TerraEC2 - Simple AWS EC2 Provisioning

Hey there! Welcome to TerraEC2 - a super simple way to spin up an Ubuntu EC2 instance on AWS. I've added GitHub Actions to make sure everything runs smoothly with automated testing.

## 🎯 What's This All About?

This project helps you quickly deploy an EC2 instance without the AWS console hassle. Perfect for:
- Testing stuff quickly
- Learning Terraform
- Setting up a basic dev environment
- Getting started with AWS infrastructure

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
├── outputs.tf         # Output definitions
├── providers.tf       # AWS provider configuration
├── variables.tf       # Variable declarations
├── terraform.tfvars   # Variable values
└── README.md         # This file
```

## Infrastructure Components

- Ubuntu EC2 instance (t2.micro)
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

## Outputs

- `public_ip`: The public IP address of the EC2 instance
- `instance_id`: The AWS instance ID

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
