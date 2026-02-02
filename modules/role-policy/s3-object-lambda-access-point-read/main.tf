resource "aws_iam_role_policy" "this" {
  role   = var.role_name
  name   = var.policy_name
  policy = module.policy_document.json
}

module "policy_document" {
  source = "../../policy-document/s3-object-lambda-access-point-read"

  lambda_function_arn = var.lambda_function_arn

  s3_access_point_arn               = var.s3_access_point_arn
  s3_object_lambda_access_point_arn = var.s3_object_lambda_access_point_arn
}
