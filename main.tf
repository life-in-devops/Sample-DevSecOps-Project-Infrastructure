module "vpc" {
  source      = "./modules/vpc"
  name_prefix = var.name_prefix
}

module "eks" {
  source             = "./modules/eks"
  private_subnet_ids = module.vpc.private_subnet_ids
  public_subnet_ids  = module.vpc.public_subnet_ids
  cluster_name       = var.cluster_name
}

module "rds" {
  source             = "./modules/rds"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  bastion_sg_id = module.ec2.bastion_sg_id
  db_username        = var.db_username
  db_password        = var.db_password
}

module "s3_cloudfront" {
  source               = "./modules/s3_cloudfront"
  frontend_bucket_name = var.frontend_bucket_name
  acm_certificate_arn  = var.acm_certificate_arn
}

module "ec2" {
  source           = "./modules/ec2"
  name_prefix      = "devops-app"
  vpc_id           = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_ids[0]
  ami_id           = var.ami_id
  instance_type    = var.bastion_instance_type
  key_name         = var.key_name

  tags = {
    Project     = "DevOpsApp"
    Environment = "dev"
  }
}
