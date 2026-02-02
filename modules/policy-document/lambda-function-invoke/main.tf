data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"
    actions = [
      "lambda:InvokeFunction",
    ]
    resources = [
      var.lambda_function_arn
    ]
  }
}
