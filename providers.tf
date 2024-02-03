terraform {
  backend "s3" {
    bucket   = "sagare"
    key      = "current/terraform.tfstate"
    region   = "us-east-1"
  }
}


provider "aws" {
  region  = "us-east-1"
}
