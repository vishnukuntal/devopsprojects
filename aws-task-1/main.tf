terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  }
  resource "aws_instance" "terraform" {
    instance_type = "t2.micro"
     ami = "ami-020cba7c55df1f615"
     subnet_id = "subnet-0031964253c869a4c"
     
  }


  resource "aws_s3_bucket" "s3_bucket" {
  bucket = "tf-s3-upgrad" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
