terraform {
  backend "s3" {
    bucket       = "sctp-tfstate-ce13"
    key          = "eugene/mod-3-2/terraform.tfstate"
    region       = "us-east-1"
  }
}

provider "aws" {
   region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  # comment
  bucket_prefix = "eugene-s3-mod-3-2"
}