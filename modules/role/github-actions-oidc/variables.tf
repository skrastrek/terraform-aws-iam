variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = null
}

variable "permission_boundary" {
  type    = string
  default = null
}

variable "policy_attachments" {
  type    = list(string)
  default = []
}

variable "policy_jsons" {
  type    = map(string)
  default = {}
}

variable "github_actions_iam_oidc_provider_arn" {
  type = string
}

variable "github_repositories" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
