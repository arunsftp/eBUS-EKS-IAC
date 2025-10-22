module "ebus-eks-cluster" {
  source = "../../../TfNSW-modules/eks-cluster"
  cluster_name = var.cluster_name
  kubernetes_version = var.kubernetes_version
  support_type = var.support_type
  cluster_role_arn = var.cluster_role_arn
  subnet_ids = var.subnet_ids
  tags = var.tags
  node_role_arn = var.node_role_arn
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
  instance_types = var.instance_types
  enabled_cluster_log_types = var.enabled_cluster_log_types
  vpc_cni_addon_version = var.vpc_cni_addon_version
  ebs_csi_addon_version = var.ebs_csi_addon_version
  kube_proxy_addon_version = var.kube_proxy_addon_version
  vpc_cni_env_namespace = var.vpc_cni_env_namespace
  kube_proxy_env_namespace = var.kube_proxy_env_namespace
  ebs_csi_env_namespace = var.ebs_csi_env_namespace
}

