resource "aws_ssm_parameter" "SampleSSMUpdate" {
  name      = "Test"
  type      = "SecureString"
  value     = "Taosif"
  overwrite = true
}

resource "awscc_ssm_parameter" "SampleSSMUpdate1" {
  name            = "Test1"
  type            = "SecureString"
  value           = "Varalakshmi"
  overwrite = true
}

