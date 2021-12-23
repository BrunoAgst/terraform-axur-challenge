terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.27"
        }
    }

    required_version = ">= 0.14.9"
}

provider "aws" {
    profile = "default"
    region = var.regiao_aws
}

resource "aws_instance" "app_server" {
    ami           = var.ami
    instance_type = var.instancia
    key_name      = var.chave
    tags = {
      Name = "terraform ansible node"
    }
}

resource "aws_key_pair" "sshKey" {
    key_name = var.chave
    public_key = file("${var.chave}.pub")
  
}

output "IPpublico" {
    value = aws_instance.app_server.public_ip
}