resource "aws_iam_role_policy" "this" {
  role   = var.role_name
  name   = var.policy_name
  policy = module.policy_document.json
}

module "policy_document" {
  source = "../../policy-document/sfn-state-machine-start-execution"

  sfn_state_machine_arn = var.sfn_state_machine_arn
}
