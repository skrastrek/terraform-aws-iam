resource "aws_iam_role_policy" "this" {
  role   = var.role_name
  name   = var.policy_name
  policy = module.policy_document.json
}

module "policy_document" {
  source = "../../policy-document/lambda-function-invoke"

  lambda_function_arn = var.lambda_function_arn
}
