provider "aws" {
  region                  = "us-east-1"
  profile                 = "default"
  shared_credentials_file = var.credentials_file
}
