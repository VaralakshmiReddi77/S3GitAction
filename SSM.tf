terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  # Configuration options
}
resource "awscc_ssm_parameter" "example1" {
  name            = "command1"
  type            = "String"
  value           = "Varalakshmi"
  description     = "SSM Parameter for running date command."
  allowed_pattern = "^[a-zA-Z]{1,10}$"
    lifecycle {
    ignore_changes = [value, tags]
  }
}
data "aws_ssm_parameters_by_path" "example1" {
  path = "/command1"
}
