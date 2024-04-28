terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
  required_version = "> 1.0.0"
  backend "s3" {
    bucket         = "terraformremotebackendqt"
    key            = "Templates/s3-dynamoDB-backend"
    dynamodb_table = "terraformlock"
    region         = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
}