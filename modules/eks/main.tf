module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.37.2"

  cluster_name    = "securebank-eks"
  cluster_version = "1.29"

  subnet_ids = module.vpc.private_subnets   #  connect VPC outputs here

  # Control API endpoint access
  cluster_endpoint_public_access  = true   # keep true for now (so GitHub Actions + kubectl work)
  cluster_endpoint_private_access = false  # optional, depending on your setup

  eks_managed_node_groups = {
    default = {
      min_size       = 1
      max_size       = 3
      desired_size   = 2
      instance_types = ["t3.medium"]

      # Explicitly define labels to avoid drift
      labels = {}
    }
  }
}
