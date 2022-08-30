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

#create a remote backend
terraform {
  backend "s3" {
    bucket = "automated-skillmix-bucket"
    key = "path/to/my/key"
  }
}