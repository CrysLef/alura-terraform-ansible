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

resource "aws_instance" "django-app-instance" {
  ami           = data.aws_ami.ubuntu.id
  key_name      = var.key_name
  instance_type = var.instance_type

  tags = {
    Name = "Ansible-Terraform-Python Alura"
    env  = "dev"
  }
}