output "s3_bucket_name" {
  description = "Name of the S3 bucket created"
  value       = aws_s3_bucket.frontend.bucket
}

output "cloudfront_domain_name" {
  description = "CloudFront domain name"
  value       = aws_cloudfront_distribution.frontend_distribution.domain_name
}
