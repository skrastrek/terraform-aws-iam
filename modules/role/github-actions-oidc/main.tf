resource "aws_iam_role" "this" {
  name                 = var.name
  description          = var.description
  permissions_boundary = var.permission_boundary
  assume_role_policy   = module.assume_role_policy_document.json

  tags = var.tags
}

module "assume_role_policy_document" {
  source = "../../policy-document/github-actions-oidc-assume-role"

  github_actions_iam_oidc_provider_arn = var.github_actions_iam_oidc_provider_arn
  github_repositories                  = var.github_repositories
}

resource "aws_iam_role_policy" "this" {
  count = length(var.policy_jsons)

  role   = aws_iam_role.this.id
  policy = var.policy_jsons[count.index]
}

resource "aws_iam_role_policy_attachment" "this" {
  count = length(var.policy_attachments)

  role       = aws_iam_role.this.id
  policy_arn = var.policy_attachments[count.index]
}
