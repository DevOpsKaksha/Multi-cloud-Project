terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    azure = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
  backend "s3" {
    bucket  = "my-terraform-state-bucket-ravi-first"
    key     = "terraform/state"
    region  = "us-west-2"
    profile = "sunny"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "sunny"
}