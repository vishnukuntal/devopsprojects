terraform {
  backend "s3" {
    bucket         = "tf-s3-upgrad" # change this
    key            = "tf-s3-upgrad/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
    use_lockfile = true
  }
}
