resource "aws_ssm_parameter" "global_ssm" {
  name = "/aft/global/${data.aws_caller_identity.id.account_id}"
  type = "String"
  value = "hello"
}

data "aws_caller_identity" "id" {}