variable "gcp_project" {
  description = "Google Cloud Platform Project Name"
  type        = string
}

variable "region" {
  description = "Google Cloud Platform Deploy Region"
  type        = string
}

variable "cloud_scheduler_job_name" {
  description = "Cloud Scheduler Job Name"
  type        = string
}

variable "cloud_scheduler_job_schedule" {
  description = "Cloud Scheduler Job Schedule"
  type        = string
}

variable "cloud_functions_pubsub_topic_id" {
  description = "Cloud Functions Pub/Sub topic_id"
  type        = string
}
