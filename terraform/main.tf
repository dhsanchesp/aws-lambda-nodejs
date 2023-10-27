terraform {
  required_version = "1.6.2"
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project = "Serverless REST API"
      CreatedAt = "2023-10-26"
      Managedby = "Terraform"
      Owner = "Daniel Sanches"
      Env = var.env
    }
  }
}