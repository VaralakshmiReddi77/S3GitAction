resource "aws_ssm_parameter" "/systems/fsystem01/config" {
  name      = "/systems/fsystem01/config"
  type      = "String"
  value     = "https://www.website1.com"
  overwrite = true
}

resource "aws_ssm_parameter" "/systems/fsystem02/config" {
  name            = "/systems/fsystem02/config"
  type            = "String"
  value           = "https://www.ESL.com"
  overwrite = true
}
