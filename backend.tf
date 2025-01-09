terraform {
  backend "s3" {
    bucket = "dhm-planit-tf"
    key    = "planit-terraform-backend/terraform.tfstate"
    region = "us-east-1"
  }
}
