variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "lambda-function-invoke"
}

variable "lambda_function_arn" {
  type = string
}
