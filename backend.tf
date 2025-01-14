terraform {
  backend "s3" {
    bucket  = "dhm-planit-tf"  // S3 bucket name for storing the Terraform state
    key     = "planit-terraform-backend/terraform.tfstate"  // Path to the state file within the bucket
    region  = "us-east-1"  // AWS region where the S3 bucket is located
    encrypt = true  // Enable server-side encryption for the state file
  }
}
