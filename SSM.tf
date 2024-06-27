resource "awscc_ssm_parameter" "example1" {
  name            = "command1"
  type            = "String"
  value           = "Varalakshmi"
  description     = "SSM Parameter for running date command."
  allowed_pattern = "^[a-zA-Z]{1,10}$"
    lifecycle {
    ignore_changes = [value]
  }
}
data "aws_ssm_parameters_by_path" "example1" {
  path = "/command1"
}
