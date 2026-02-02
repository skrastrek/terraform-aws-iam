variable "role_name" {
  type = string
}

variable "policy_name" {
  type    = string
  default = "s3-object-lambda-access-point-read"
}

variable "s3_access_point_arn" {
  type = string
}

variable "s3_object_lambda_access_point_arn" {
  type = string
}

variable "lambda_function_arn" {
  type = string
}
