variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "ecr-repository-push"
}

variable "ecr_repository_arn" {
  type = string
}