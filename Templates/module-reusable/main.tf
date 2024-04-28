provider "aws" {
  region = "us-east-1"
}

module "aws_vpc" {
  source = "./modules/aws_vpc"
  region = "us-east-1"
  subnet_info = {
    names = ["web", "app", "db", "mgmt"]
    public_subnet_names = ["web"]
  }
}

output "public_subnets" {
    value = module.aws_vpc.public_subnet_ids
}