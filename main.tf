provider "aws" {
  alias = "Singapore"
  region = "ap-southeast-1"
  sts_region = "ap-southeast-1"
}

data "aws_eks_cluster" "default" {
    name = "eks-coba2"
}