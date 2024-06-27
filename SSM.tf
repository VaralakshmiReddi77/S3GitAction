resource "awscc_ssm_parameter" "example" {
  name            = "command"
  type            = "String"
  value           = "date"
  description     = "SSM Parameter for running date command."
  allowed_pattern = "^[a-zA-Z]{1,10}$"
}
module "store_write" {
  source  = "cloudposse/ssm-parameter-store/aws"

  parameter_write = [
    {
      name        = "/cp/prod/app/database/master_password"
      value       = "password1"
      type        = "String"
      description = "Production database master password"
    }
  ]

  tags = {
    ManagedBy = "Terraform"
  }
}
module "store_read" {
  source  = "cloudposse/ssm-parameter-store/aws"
  parameter_read = ["/cp/prod/app/database/master_password"]
}
