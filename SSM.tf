resource "awscc_ssm_parameter" "configcred" {
  name            = "DBPassword"
  type            = "String"
  value = "null"

  lifecycle {
    ignore_changes        = all
  }
}

data "aws_ssm_parameters_by_path" "configcred" {
  path = "/DBPassword"
}

