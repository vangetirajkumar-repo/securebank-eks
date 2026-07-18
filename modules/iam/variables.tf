variable "cluster_role_name" {
  description = "IAM role name for EKS cluster"
  type        = string
  default     = "securebank-eks-cluster-role"
}

variable "node_role_name" {
  description = "IAM role name for EKS nodes"
  type        = string
  default     = "securebank-eks-node-role"
}

