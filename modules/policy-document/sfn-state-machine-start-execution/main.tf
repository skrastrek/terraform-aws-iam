data "aws_iam_policy_document" "this" {
  statement {
    effect    = "Allow"
    actions   = ["states:StartExecution"]
    resources = [var.sfn_state_machine_arn]
  }
}