terraform {
  cloud {
    organization = "findnull"

    workspaces {
      name = "Se_EKS_Auth"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.20.1"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }
}
provider "aws" {
  alias = "Singapore"
  region = "ap-southeast-1"
  sts_region = "ap-southeast-1"
}