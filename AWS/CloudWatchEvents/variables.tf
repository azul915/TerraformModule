variable "description" {
  description = "AWS Cloud Watch Event Rule Description"
  type        = string
}

variable "schedule_expression" {
  description = "AWS Cloud Watch Event Rule Schedule Expression"
  type        = string
}

variable "event_rule_is_enabled" {
  description = "AWS Cloud Watch Event Rule is Enabled"
  type        = bool
}

variable "target_arn" {
  description = "AWS Cloud Watch Evnet Target Arn"
  type        = string
}
