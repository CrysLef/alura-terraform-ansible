terraform {
  backend "s3" {
    region         = "us-east-1"
    dynamodb_table = "dynamodb-state-lock"
    bucket         = "alura-iac-backend"
    encrypt        = true
    key            = "terraform.tfstafe"
  }
}