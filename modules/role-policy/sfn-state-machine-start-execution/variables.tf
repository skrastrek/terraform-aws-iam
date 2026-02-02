variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "sfn-state-machine-start-execution"
}

variable "sfn_state_machine_arn" {
  type = string
}
