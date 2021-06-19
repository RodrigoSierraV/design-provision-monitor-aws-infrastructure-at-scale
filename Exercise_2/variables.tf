# TODO: Define the variable for aws_region

variable "function_name" {
  description = "udacity_lambda_tf"
  type        = string
  default     = "udacity_lambda_tf"
}

variable "runtime" {
  description = "python3.7"
  type        = string
  default     = "python3.7"
}

variable "enable_cloudwatch_logs" {
  description = "Cloudwatch"
  type        = string
  default     = true
}

variable "environment" {
  description = "Environment configuration for the Lambda function"
  type        = map
  default     = {"greeting": "oi"}
}
