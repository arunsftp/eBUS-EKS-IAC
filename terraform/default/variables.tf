variable "cluster_name" {   
  description = "The name of the EKS cluster"
  type        = string
  
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use for the EKS cluster"
  type        = string
  default     = "1.30"
}

variable "support_type" {
  description = "The support type for the EKS cluster upgrade policy"
  type        = string
  default     = "STANDARD" # or "EXTENDED"
}

variable "cluster_role_arn" {
  description = "The ARN of the IAM role to use for the EKS cluster"
  type        = string
  #default     = "arn:aws:iam::123456789012:role/my-eks-cluster-role"
}

variable "subnet_ids" {
  description = "The subnet IDs to use for the EKS cluster"
  type        = list(string)
  #default     = ["subnet-12345678", "subnet-87654321"]
}

variable "tags" {
  description = "Tags to apply to the EKS cluster"
  type        = map(string)
  default     = {
    Environment = "dev"
    Cluster_Role = "Share/Dedicated"
  }
}

variable "node_role_arn" {
  description = "The ARN of the IAM role to use for the EKS node group"
  type        = string
  #default     = "arn:aws:iam::123456789012:role/my-eks-node-role"
  
}
variable "desired_size" {
  description = "The desired number of nodes in the EKS node group"
  type        = number
  default     = 2   
}

variable "max_size" {
  description = "The maximum number of nodes in the EKS node group"
  type        = number
  default     = 3   
}
variable "min_size" {
  description = "The minimum number of nodes in the EKS node group"
  type        = number
  default     = 1   
}

variable "instance_types" {
  description = "The instance types to use for the EKS node group"
  type        = list(string)
  default     = ["t3.medium"]   
}

variable "enabled_cluster_log_types" {
  description = "The types of control plane logs to enable"
  type        = list(string)
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}

variable "vpc_cni_addon_version" {
  description = "The version of the VPC CNI add-on to use"
  type        = string
  default     = "v1.14.1-eksbuild.1" # Check for the latest version in your region
}   

variable "ebs_csi_addon_version" {
  description = "The version of the EBS CSI add-on to use"
  type        = string
  default     = "v1.24.0-eksbuild.1" # Check for the latest version in your region
}

variable "kube_proxy_addon_version" {
  description = "The version of the Kube Proxy add-on to use"
  type        = string
  default     = "v1.30.4-eksbuild.1" # Check for the latest version in your region
}

variable "vpc_cni_env_namespace" {
  description = "The environment variables for the VPC CNI add-on"
  type        = string
  
}

variable "kube_proxy_env_namespace" {
  description = "The environment variables for the Kube Proxy add-on"
  type        = string
  
}

variable "ebs_csi_env_namespace" {
  description = "The environment variables for the EBS CSI add-on"
  type        = string
  
}



