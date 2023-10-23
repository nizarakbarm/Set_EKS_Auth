data "aws_eks_cluster" "default" {
    name = "eks-coba2"
}
output "check_cluster_name" {
  value = data.aws_eks_cluster.default.name
}