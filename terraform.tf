terraform {
  cloud {
    organization = "findnull"

    workspaces {
      name = "Set_EKS_Auth"
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