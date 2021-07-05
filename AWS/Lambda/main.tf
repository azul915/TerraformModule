# ------------------------------------------------
# AWS Lambda
# https://registry.terraform.io/modules/terraform-module/lambda/aws/latest

resource "aws_lambda_function" "fun" {
  function_name    = var.lambda_function_name
  handler          = var.lambda_function_handler
  role             = var.lambda_role_arn
  filename         = var.archive_file_output_path
  runtime          = var.lambda_function_runtime
  source_code_hash = filebase64sha256(var.archive_file_output_path)
  timeout          = var.timeout
  memory_size      = var.memory_size

  environment {
    variables = var.environments
  }
}

resource "aws_lambda_permission" "permission" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.fun.function_name
  principal     = "events.amazonaws.com"
  source_arn    = var.source_arn

  lifecycle {
    create_before_destroy = false
  }
}
