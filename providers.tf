terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }
  backend "s3" {
    bucket = "my-terraform-state-bucket-ravi-first"
    key    = "terraform/state"
    region = "us-west-2"
    profile = "sunny" #Ensure this profile exists in your AWS credentials
    use_lockfile = true
    encrypt      = true # Encrypt the state file
  }
}

provider "aws" {
  region = var.aws_region
  #profile = "sunny" #Ensure this profile exists in your AWS credentials
  assume_role {
    role_arn = var.oidc_role_arn
  }
}

provider "azurerm" {
  features {}
}