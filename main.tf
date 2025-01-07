provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "infra_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Infrasity-vpc"
  }
}

resource "aws_s3_bucket" "analytics_bucket" {
  bucket = "analytics-feature-bucket"
  acl    = "private"
}

