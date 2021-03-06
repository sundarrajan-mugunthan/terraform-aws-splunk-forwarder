variable "name_prefix" {
  description = "A prefix that will be added to resources so that they are unique."
  type        = string
}

variable "filter_patterns" {
  description = "List of Cloud Watch filter patterns."
  default     = []
  type        = list(string)
}

variable "log_group_names" {
  description = "List of Cloud Watch log group names."
  default     = []
  type        = list(string)
}

variable "handler" {
  description = "The function entrypoint in the code."
  type        = string
  default     = "com.telia.aws.cloudwatchtoremotebucket.Handler::handleRequest"
}

variable "timeout" {
  description = "Timeout for the lambda function that copies log entries to Cloud Watch. Modify if needed."
  type        = number
  default     = 30
}

variable "memory_size" {
  description = "Memory allocation for the lambda function. Modify if needed."
  type        = number
  default     = 512
}

variable "lambda_s3_bucket" {
  description = "The bucket where the lambda function that is a Cloud Watch subscription target is uploaded."
  type        = string
}

variable "s3_key" {
  description = "The s3 key for the Lambda artifact."
  type        = string
  default     = "cloudwatch-logs-remote-bucket-1.6.zip"
}

variable "log_bucket_name" {
  description = "The bucket that the logs will be forwared to."
  type        = string
}

variable "split" {
  description = "If true, split the Cloud Watch event object into a list, every list item gets meta-data from the cloud watch event (Log group, owner, Log Stream)."
  type        = bool
  default     = true
}
