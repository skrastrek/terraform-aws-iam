resource "aws_iam_role_policy" "this" {
  role   = var.role_name
  name   = var.policy_name
  policy = module.policy_document.json
}

module "policy_document" {
  source = "../../policy-document/sfn-state-machine-invoke-http-endpoint"

  sfn_state_machine_arn = var.sfn_state_machine_arn

  eventbridge_connection_arn = var.eventbridge_connection_arn
  http_endpoints             = var.http_endpoints
}
