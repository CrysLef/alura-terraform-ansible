terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.region
}

resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = var.public_key
}

resource "aws_instance" "django_app_instance" {
  ami             = data.aws_ami.ubuntu.id
  key_name        = var.key_name
  instance_type   = "${terraform.workspace == "prod" ? "t3.micro" : "t2.micro"}"
  count           = "${terraform.workspace == "prod" ? 3 : 1}"
  security_groups = ["${aws_security_group.alura-sg.name}"]

  tags = "${terraform.workspace == "prod" ? var.tag_prod : var.tag_teste}"
}

resource "aws_dynamodb_table" "state_lock" {
  name           = "dynamodb-state-lock"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "dynamodb terraform state lock table"
  }
}