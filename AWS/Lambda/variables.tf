variable "lambda_function_name" {
  description = "AWS Lambda Function Name"
  type        = string
}

variable "lambda_function_handler" {
  description = "AWS Lambda Function Handler"
  type        = string
}

variable "lambda_role_arn" {
  type = string
}

variable "lambda_function_runtime" {
  description = "AWS Lambda Function Runtime"
  type        = string
}

variable "archive_file_output_path" {
  description = "Archive File Output Path"
  type        = string
}

variable "timeout" {
  description = "AWS Lambda Function Timeout"
  type        = number
}

variable "memory_size" {
  description = "AWS Lambda Function Memory Size"
  type        = number
}

variable "environments" {
  description = "AWS Lambda Function Environments"
  type        = map(string)
}

variable "source_arn" {
  description = "AWS Lambda Permission Source Arn"
  type        = string
}

