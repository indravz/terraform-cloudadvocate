terraform {
  required_providers {
    aws = {
      version = "~> 5.30.0"
    }
  }

  backend "s3" {
    bucket         = "insurance-claims-app"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tf-backend"
  }

  required_version = "~> 1.6.6" #terraform-cli version
}

provider "aws" {
  # region = "us-east-2"
  region = "us-east-2"
}



terraform {
/*  backend "local" {
    path = "statefile.tfstate"
  }*/

}
