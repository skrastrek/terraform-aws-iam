data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"
    actions = [
      "timestream:Select",
      "timestream:DescribeTable",
      "timestream:ListMeasures",
    ]
    resources = [
      var.timestream_table_arn
    ]
  }

  statement {
    effect = "Allow"
    actions = [
      "timestream:DescribeEndpoints",
      "timestream:SelectValues",
      "timestream:CancelQuery",
    ]
    resources = ["*"]
  }
}
