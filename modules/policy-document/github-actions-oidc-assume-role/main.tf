data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"
    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]
    principals {
      type = "Federated"
      identifiers = [
        var.github_actions_iam_oidc_provider_arn
      ]
    }
    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:aud"
      values   = ["sts.amazonaws.com"]
    }
    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values = flatten([for repository in var.github_repositories : [
        # Classic token format: repo:<org>/<repo>:...
        "repo:${repository}:*",
        # Immutable ID token format: repo:<org>@<org-id>/<repo>@<repo-id>:...
        "repo:${split("/", repository)[0]}@*/${split("/", repository)[1]}@*:*"
      ]])
    }
  }
}
