data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    region = var.region
    bucket = format("%s-%s-terraform-state", var.namespace, var.stage)
    key    = format("%s/vpc/terraform.tfstate", var.stage)
  }
}
