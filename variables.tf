variable "aws_profile" {
  description = "AWS profile name"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "tolerations" {
  type        = list(any)
  description = "toleration for dameonset"
}
