terraform {
  backend "s3" {
    bucket  = "devops-projects-terraform-backup" # Replace with your bucket
    key     = "sample-eks-project/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
