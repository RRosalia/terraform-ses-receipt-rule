variable "rule_set_name" {
  description = "Name of the SES rule set"
  type        = string
}

variable "rule_name" {
  description = "Name of the SES receipt rule"
  type        = string
}

variable "recipients" {
  description = "List of email addresses or domains for which this rule applies"
  type        = list(string)
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket to deliver email data"
  type        = string
}

variable "s3_object_key_prefix" {
  description = "Optional prefix for objects stored in the S3 bucket"
  type        = string
  default     = ""
}

variable "s3_iam_role_arn" {
  description = "The IAM role that allows amazon ses to write to my s3 bucket"
  type        = string
}

variable "sns_topic_arn" {
  description = "Optional ARN of an SNS topic to publish notifications"
  type        = string
  default     = null
}

variable "scan_enabled" {
  description = "Enable or disable spam and virus scanning"
  type        = bool
  default     = true
}

variable "tls_policy" {
  description = "Do we require the tls for all emails"
  type        = string
  default     = "Require"
}