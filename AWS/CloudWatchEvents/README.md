# Sample

```hcl
module "cloud_watch_events" {
  source = "../../TerraformModule/AWS/CloudWatchEvents"

  description           = "This is invoked at 9:00(JST)"
  schedule_expression   = "cron(0 0 * * ? *)"
  event_rule_is_enabled = false
  target_arn            = "arn:aws:lambda:ap-northeast-1:793036161831:function:foo"
}
```