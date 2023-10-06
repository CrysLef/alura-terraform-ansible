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

resource "aws_instance" "django_app" {
  ami             = data.aws_ami.ubuntu.id
  key_name        = var.key_name
  instance_type   = "${terraform.workspace == "prod" ? "t3.medium" : "t2.micro"}"
  count           = "${terraform.workspace == "prod" ? 3 : 1}"
  security_groups = ["${aws_security_group.this.name}"]

  tags = "${terraform.workspace == "prod" ? var.tag_prod : var.tag_teste}"
}

resource "aws_instance" "django_app" {
  ami             = data.aws_ami.ubuntu.id
  key_name        = var.key_name
  instance_type   = "${terraform.workspace == "prod" ? "t3.medium" : "t2.micro"}"
  count           = "${terraform.workspace == "prod" ? 3 : 1}"
  security_groups = ["${aws_security_group.this.name}"]

  tags = "${terraform.workspace == "prod" ? var.tag_prod : var.tag_teste}"
}