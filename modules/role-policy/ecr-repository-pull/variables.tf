variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "ecr-repository-pull"
}

variable "ecr_repository_arn" {
  type = string
}