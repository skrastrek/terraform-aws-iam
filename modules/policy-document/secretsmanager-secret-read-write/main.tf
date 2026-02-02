data "aws_iam_policy_document" "this" {
  dynamic "statement" {
    for_each = var.secret_kms_key_arn == null ? [] : [var.secret_kms_key_arn]
    content {
      sid    = "UseSecretKmsKey"
      effect = "Allow"

      actions = [
        "kms:Decrypt",
        "kms:DescribeKey",
        "kms:GenerateDataKey"
      ]
      resources = [statement.value]
    }
  }
  statement {
    sid    = "ReadSecretValue"
    effect = "Allow"

    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret",
      "secretsmanager:PutSecretValue",
      "secretsmanager:ListSecretVersionIds",
      "secretsmanager:UpdateSecretVersionStage",
    ]
    resources = [var.secret_arn]
  }
}
