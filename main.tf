terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
  region = "us-east-1"
}

#create EC2 instance
resource "aws_instance" "web_server" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

  tags = {
    Name = "skillmix-lab-instance"
  }
}