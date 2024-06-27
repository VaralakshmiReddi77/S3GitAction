resource "aws_ssm_parameter" "SampleSSMUpdate" {
  name      = "Test"
  type      = "SecureString"
  value     = "Taosif"
  overwrite = true
}

resource "aws_ssm_parameter" "example1" {
  name            = "command1"
  type            = "String"
  value           = "Varalakshmi"
  description     = "SSM Parameter for running date command."
  overwrite = true
}
