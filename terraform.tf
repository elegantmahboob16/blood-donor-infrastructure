terraform {
  backend "s3" {
    bucket       = "aws-infra-k8s-751148683-20261006"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
