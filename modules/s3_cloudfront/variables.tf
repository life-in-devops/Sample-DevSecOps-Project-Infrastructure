variable "frontend_bucket_name" {
  description = "The name of the S3 bucket for frontend"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN for CloudFront HTTPS"
  type        = string
}
