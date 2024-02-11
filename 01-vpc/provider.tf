terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "terra-roboshop"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "robo-table"
  }
}

provider "aws" {
  region = "us-east-1"
}