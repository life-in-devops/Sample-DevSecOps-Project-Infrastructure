output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "s3_bucket_name" {
  value = module.s3_cloudfront.s3_bucket_name
}

output "cloudfront_domain" {
  value = module.s3_cloudfront.cloudfront_domain_name
}
