variable "gcp_project" {
  description = "Google Cloud Platform Project Name"
  type        = string
}

variable "region" {
  description = "Google Cloud Platform Deploy Region"
  type        = string
}

variable "cloud_pubsub_topic_name" {
  description = "Cloud Pub/Sub Topic Name"
  type        = string
}

variable "archive_dir_path" {
  description = "Archive Directory Path"
  type        = string
}

variable "cloud_functions_function_name" {
  description = "Cloud Functions Function Name"
  type        = string
}

variable "cloud_functions_runtime" {
  description = "Cloud Functions Runtime"
  type        = string
}

variable "cloud_functions_entry_point" {
  description = "Cloud Functions Entry Point"
  type        = string
}

variable "cloud_functions_available_memory_mb" {
  description = "Cloud Functions Available Memory MB"
  type        = number
  default     = 128
}

variable "cloud_functions_timeout" {
  description = "Cloud Functions Timeout"
  type        = number
  default     = 60
}

variable "cloud_functions_service_account_email" {
  description = "Cloud Functions Service Account Email"
  type        = string
}

variable "cloud_functions_environment_variables" {
  description = "Cloud Functions Environment Variables"
  type        = map(string)
  default     = {}
}
