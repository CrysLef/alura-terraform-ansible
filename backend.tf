terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "alura-iac-backend"
    encrypt = true
    key     = "terraform.tfstafe"
  }
}