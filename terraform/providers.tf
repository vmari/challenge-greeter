terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.29"
    }
  }
}

provider "aws" {
  profile = "valentin"
  region  = "us-east-2"
}
