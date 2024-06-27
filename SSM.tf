resource "awscc_ssm_parameter" "example1" {
  name            = "command1"
  type            = "String"
   value = "null"

  lifecycle {
    ignore_changes        = all
  }
}

data "aws_ssm_parameters_by_path" "example1" {
  path = "/command1"
}
