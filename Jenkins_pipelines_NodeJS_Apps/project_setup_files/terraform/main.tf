terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }

  required_version = ">= 1.3"
  backend "s3" {
    bucket = "terraform-state-test-yelena" # setup your s3 bucket name
    key    = "nodejsapp_example/terraform.tfstate" # setup your s3 bucket name
    region = "us-east-1"
  }
}

provider "aws" {
  region     = "us-east-1"
}