
module "label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=0.19.2"
  namespace  = var.namespace
  name       = var.name
  stage      = var.stage
  delimiter  = var.delimiter
  attributes = compact(concat(var.attributes, list("cluster")))
  tags       = var.tags
}

module "eks_cluster" {
  source                     = "git::https://github.com/cloudposse/terraform-aws-eks-cluster.git?ref=0.29.1"
  namespace                  = var.namespace
  stage                      = var.stage
  name                       = var.name
  attributes                 = var.attributes
  tags                       = var.tags
  region                     = var.region
  vpc_id                     = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_ids                 = data.terraform_remote_state.vpc.outputs.private_subnets
  kubernetes_version         = var.kubernetes_version
  enabled_cluster_log_types  = var.enabled_cluster_log_types
  endpoint_private_access    = var.cluster_endpoint_private_access
  endpoint_public_access     = var.cluster_endpoint_public_access
  public_access_cidrs        = var.public_access_cidrs
  oidc_provider_enabled      = var.oidc_provider_enabled
  map_additional_iam_roles   = var.map_additional_iam_roles
  workers_role_arns          = []
  workers_security_group_ids = []
}
