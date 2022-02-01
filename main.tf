terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
        bucket = "terraform-andyw"
        key = "concourse/terraform.tfstate"
        region =  "us-east-1"
        }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}


