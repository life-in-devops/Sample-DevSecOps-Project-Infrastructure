output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = aws_eks_cluster.eks_cluster.name
}

output "eks_cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.eks_cluster.endpoint
}

output "eks_cluster_oidc_issuer_url" {
  description = "OIDC issuer URL for the cluster"
  value       = aws_eks_cluster.eks_cluster.identity[0].oidc[0].issuer
}

output "eks_nodegroup_role_arn" {
  description = "IAM role ARN for the node group"
  value       = aws_eks_cluster.eks_cluster.arn
}
