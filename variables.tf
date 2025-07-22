variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "db_username" {
  description = "PostgreSQL database admin username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "PostgreSQL database admin password"
  type        = string
  sensitive   = true
}

variable "frontend_bucket_name" {
  description = "Name of the S3 bucket for frontend"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ARN of the certificate"
  type        = string
}

variable "name_prefix" {
  description = "ARN of the certificate"
  type        = string
}

variable "key_name" {
  description = "Key pair name to SSH into the bastion host"
  type        = string
}

variable "bastion_instance_type" {
  description = "EC2 instance type for the bastion host"
  type        = string
  default     = "t3.micro"
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
}

variable "ami_id" {
  description = "Base image for Bastion"
  type        = string
}
