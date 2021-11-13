terraform {
  backend "s3" {
    bucket = "vorx-company-iac-ivan"
    key    = "vpc.tfstate"
    region     = "us-east-1"
  }
}