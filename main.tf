provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.16.1"
    }
  }
}

resource "aws_key_pair" "key" {
  key_name   = "id_rsa"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_default_vpc" "default_vpc" {}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"

  # using default VPC
  vpc_id = aws_default_vpc.default_vpc.id

  ingress {
    description = "TLS from VPC"

    # we should allow incoming and outgoing
    # TCP packets
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    # allow all traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "my_ec2" {
  ami             = var.ami_id
  instance_type   = "t2.micro"

  # referring to key which we created earlier
  key_name        = aws_key_pair.key.key_name

  # referring to security group created earlier
  security_groups = [aws_security_group.allow_ssh.name]

  tags = var.tags
}
