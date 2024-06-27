resource "aws_ssm_parameter" "SampleSSMUpdate" {
  name      = "Test"
  type      = "SecureString"
  value     = "Varalakshmi"
  overwrite = true
}
