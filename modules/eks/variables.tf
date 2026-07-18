variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "securebank-eks"
}

variable "cluster_version" {
  description = "EKS Kubernetes version"
  type        = string
  default     = "1.29"
}

