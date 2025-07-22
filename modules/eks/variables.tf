variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "devops-eks-cluster"
}

variable "private_subnet_ids" {
  description = "Private subnets"
  type        = list(string)
}

variable "public_subnet_ids" {
  description = "Public subnets"
  type        = list(string)
}