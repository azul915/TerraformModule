# Sample

```hcl
data "archive_file" "python" {
  type        = "zip"
  source_file = "../sample.py"
  output_path = "../sample.zip"
}

module "aws_lambda" {
  source = ""

  lambda_function_name     = "test-lambda"
  lambda_function_handler  = "sample.lambda_handler"
  lambda_role_arn = aws_iam_role.role.arn
  lambda_function_runtime  = "python3.8"
  archive_file_output_path = data.archive_file.python.output_path
  timeout                  = 60
  memory_size              = 128
  environments = {
    TZ = "Azia/Tokyo"
  }
  source_arn = module.cloud_watch_events.aws_cloudwatch_event_rule_arn
}

resource "aws_iam_role" "role" {
  name = "iam-role-lambda-function"
  assume_role_policy = jsonencode({
    Version : "2012-10-17",
    Statement : [
      {
        Action : "sts:AssumeRole",
        Principal : {
          "Service" : "lambda.amazonaws.com"
        },
        Effect : "Allow",
        Sid : ""
      }
    ]
  })
}

resource "aws_iam_policy" "lambda" {
  name = "iam-policy-function"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "logs:CreateLogStream",
          "logs:CreateLogGroup",
          "logs:PutLogEvents",
          "cloudwatch:*"
        ]
        Effect   = "Allow"
        Resource = "*",
        Sid : ""
      },
    ]
  })

  lifecycle {
    create_before_destroy = false
  }
}

resource "aws_iam_policy_attachment" "attachment" {
  name = "attachment"
  policy_arn = aws_iam_policy.lambda.arn
  roles      = [aws_iam_role.role.name]
}
```