module "account_creation" {
  source = "./modules/account_creation"

  account_name  = var.account_name
  account_email = var.account_email
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}

module "ec2_instance" {
  source = "./modules/ec2"

  subnet_id         = var.subnet_id
  security_group_id = var.security_group_id
  ami_id            = var.ami_id
  instance_type     = var.instance_type
}
