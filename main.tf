provider "aws" {
  region = var.region
}

module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  vpc_name    = var.vpc_name
  subnet_cidrs = var.subnet_cidrs
}

module "security_group" {
  source              = "./modules/security_group"
  vpc_id              = module.vpc.vpc_id
  sg_name             = var.sg_name
  ingress_from_port   = var.ingress_from_port
  ingress_to_port     = var.ingress_to_port
  ingress_protocol    = var.ingress_protocol
  ingress_cidr_blocks = var.ingress_cidr_blocks
}

module "ec2" {
  source          = "./modules/ec2"
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = element(module.vpc.subnet_ids, 0)
  security_groups = [module.security_group.security_group_id]
  instance_name   = var.instance_name
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

terraform {
  backend "s3" {
    bucket = "terraformm-remote-backend"
    key    = "terraform/state"
    region = "ap-south-1"
  }
}
