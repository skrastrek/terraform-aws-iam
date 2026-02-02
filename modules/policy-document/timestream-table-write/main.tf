data "aws_iam_policy_document" "this" {
  statement {
    effect = "Allow"
    actions = [
      "timestream:WriteRecords"
    ]
    resources = [
      var.timestream_table_arn
    ]
  }

  statement {
    effect = "Allow"
    actions = [
      "timestream:DescribeEndpoints",
    ]
    resources = ["*"]
  }
}
