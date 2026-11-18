variable "aws_region" {
  description = "AWS region in which to create regional resources."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name used for resource names and tags."
  type        = string
  default     = "static-website"

  validation {
    condition     = length(trimspace(var.project_name)) > 0
    error_message = "project_name must not be empty."
  }
}

variable "bucket_name" {
  description = "Optional globally unique S3 bucket name. One is generated when omitted."
  type        = string
  default     = null

  validation {
    condition     = var.bucket_name == null || can(regex("^[a-z0-9][a-z0-9.-]{1,61}[a-z0-9]$", var.bucket_name))
    error_message = "bucket_name must be a valid S3 bucket name."
  }
}
