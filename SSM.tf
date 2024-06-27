resource "aws_ssm_parameter" "SampleSSMUpdate" {
  name      = "Test"
  type      = "SecureString"
  value     = "Taosif"
  overwrite = true
}

resource "awscc_ssm_parameter" "DBPassword" {
  name            = "DBPassword"
  type            = "String"
  value           = "Varalakshmi"
  overwrite = true
}

