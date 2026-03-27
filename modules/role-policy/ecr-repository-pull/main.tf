resource "aws_iam_role_policy" "this" {
  role   = var.role_name
  name   = var.policy_name
  policy = module.policy_document.json
}

module "policy_document" {
  source = "../../policy-document/ecr-repository-pull"

  ecr_repository_arn = var.ecr_repository_arn
}