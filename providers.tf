terraform {
  required_providers{
     aws = {
        source = "hashicorp/aws"
        version = "~>4.51.0"
     }
  }
}
provider "aws" {
    shared_credentials_file = "$HOME/.aws/credentials"
    region = var.aws_region
    profile = "default"
}

