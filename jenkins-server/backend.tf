terraform {
  backend "s3" {
    bucket = "vorx-company-iac-ivan"
    key    = "jenkins-server.tfstate"
    region     = "us-east-1"
  }
}