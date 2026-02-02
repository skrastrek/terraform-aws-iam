data "aws_iam_policy_document" "this" {
  statement {
    effect    = "Allow"
    actions   = ["states:InvokeHTTPEndpoint"]
    resources = [var.sfn_state_machine_arn]
    condition {
      test     = "StringLike"
      variable = "states:HTTPEndpoint"
      values   = var.http_endpoints
    }
  }

  dynamic "statement" {
    for_each = var.eventbridge_connection_arn == null ? [] : [var.eventbridge_connection_arn]
    content {
      effect = "Allow"

      actions = [
        "events:RetrieveConnectionCredentials"
      ]
      resources = [statement.value]
    }
  }

  dynamic "statement" {
    for_each = var.eventbridge_connection_arn == null ? [] : [var.eventbridge_connection_arn]
    content {
      effect = "Allow"

      actions = [
        "secretsmanager:GetSecretValue",
        "secretsmanager:DescribeSecret",
      ]
      resources = ["arn:aws:secretsmanager:*:*:secret:events!connection/*"]
    }
  }
}
