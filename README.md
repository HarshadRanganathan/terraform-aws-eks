# terraform-aws-eks

Example code that uses [terraform-aws-eks-cluster](https://github.com/cloudposse/terraform-aws-eks-cluster) module to create EKS infrastructure in AWS.

## Setup/Teardown Commands

```
terraform init -backend-config="environments/prod/prod.backend.tfvars"
terraform plan -var-file="environments/shared.tfvars" -var-file="environments/prod/prod.tfvars"
terraform apply -var-file="environments/shared.tfvars" -var-file="environments/prod/prod.tfvars"
terraform destroy -var-file="environments/shared.tfvars" -var-file="environments/prod/prod.tfvars"
```
