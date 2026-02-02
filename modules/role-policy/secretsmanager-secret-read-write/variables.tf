variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "secretsmanager-secret-read-write"
}

variable "secret_arn" {
  type = string
}
