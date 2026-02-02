data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"
    actions = [
      "kms:GenerateDataKey",
      "kms:GenerateDataKey*",
      "kms:Decrypt"
    ]
    resources = [
      var.kms_key_arn
    ]
  }
}
