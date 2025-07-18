terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.2.0"
    }
  }
  backend "s3" {
    bucket = "sriremotestates3"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "76s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}