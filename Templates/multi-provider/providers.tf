terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
    alias = "virginia"
}

provider "aws" {
    region = "us-west-2"
    alias = "oregon"
}