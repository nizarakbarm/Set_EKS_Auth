data "aws_eks_cluster" "default" {
    name = "eks-coba2"
}
output "check_cluster_name" {
  value = data.aws_eks_cluster.default.name
}
provider "kubernetes" {
  host = data.aws_eks_cluster.default.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.default.certificate_authority[0].data)

  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args = [ "eks", "get-token", "--cluster-name", data.aws_eks_cluster.default.name ]
    command = "aws"
  }
}
module "iam_for_eks" {
  source = "./iam"
}
