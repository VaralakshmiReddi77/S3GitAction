resource "aws_ssm_parameter" "bla" {
  for_each = { for x in var.ssm_params : x.name => x }

  name      = each.value.name
  type      = "SecureString"
  value     = each.value.value
  overwrite = true
}

variable "ssm_params" {
  type = map(object({
    name  = string
    value = string
  }))
  default = {
    name : {
      name  = "pesho"
      value = "blaa22"
    },
    blaa : {
      name  = "gosho"
      value = "blaa11"
    }
  }
}
