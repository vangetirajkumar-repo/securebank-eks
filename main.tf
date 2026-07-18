provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source = "./modules/eks"
}

module "iam" {
  source = "./modules/iam"
}

