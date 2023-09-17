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


resource "aws_security_group" "alura-sg" {
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "django-app-instance" {
  ami             = data.aws_ami.ubuntu.id
  key_name        = var.key_name
  instance_type   = var.instance_type
  count           = var.instances_count
  security_groups = ["${aws_security_group.alura-sg.name}"]

  tags = {
    Name        = "alura_python_django"
    Environment = "dev"
    Stack       = "python"
  }
}