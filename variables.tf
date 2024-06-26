variable "billing_mode" {
  default     = "PROVISIONED"
  description = "Controls how services are charged for read and write throughput and how capacity is managed. (valid values: PROVISIONED and PAY_PER_REQUEST. default: PROVISIONED)"
  type        = string
}



variable "name" {
  description = "Name of DynamoDB table to create"
  type        = string
}

variable "read_capacity" {
  default     = 20
  description = "(Optional) The number of read units for this table. If the billing_mode is PROVISIONED, this field is required. (default: 20)"
  type        = number
}



variable "write_capacity" {
  default     = 20
  description = "(Optional) The number of write units for this table. If the billing_mode is PROVISIONED, this field is required. (default: 20)"
  type        = number
}
