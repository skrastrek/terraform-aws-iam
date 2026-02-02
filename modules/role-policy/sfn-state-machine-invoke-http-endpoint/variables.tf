variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "sfn-state-machine-invoke-http-endpoint"
}

variable "sfn_state_machine_arn" {
  type = string
}

variable "http_endpoints" {
  type = list(string)
}

variable "eventbridge_connection_arn" {
  type    = string
  default = null
}
