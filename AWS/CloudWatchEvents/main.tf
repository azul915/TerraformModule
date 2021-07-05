# ------------------------------------------------
# AWS Cloud Watch Events
# https://registry.terraform.io/modules/cloudposse/cloudwatch-events/aws/latest

resource "aws_cloudwatch_event_rule" "rule" {
  name                = "rule"
  description         = var.description
  schedule_expression = var.schedule_expression

  is_enabled = var.event_rule_is_enabled

  lifecycle {
    create_before_destroy = false
  }
}

resource "aws_cloudwatch_event_target" "target" {
  arn  = var.target_arn
  rule = aws_cloudwatch_event_rule.rule.name

  lifecycle {
    create_before_destroy = false
  }
}