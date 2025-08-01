variable "region" {
  type        = string
  description = "AWS Region"
}

variable "cloudwatch_logs_retention_in_days" {
  type        = number
  default     = 365
  description = "Number of days to retain logs for. CIS recommends 365 days.  Possible values are: 0, 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653. Set to 0 to keep logs indefinitely."
}

variable "enable_logging" {
  type        = bool
  default     = true
  description = "Enable logging for the trail"
}

variable "enable_log_file_validation" {
  type        = bool
  default     = true
  description = "Specifies whether log file integrity validation is enabled. Creates signed digest for validated contents of logs"
}

variable "include_global_service_events" {
  type        = bool
  default     = true
  description = "Specifies whether the trail is publishing events from global services such as IAM to the log files"
}

variable "is_multi_region_trail" {
  type        = bool
  default     = true
  description = "Specifies whether the trail is created in the current region or in all regions"
}

variable "cloudtrail_cloudwatch_logs_role_max_session_duration" {
  type        = number
  default     = 43200
  description = "The maximum session duration (in seconds) for the CloudTrail CloudWatch Logs role. Can have a value from 1 hour to 12 hours"
}

variable "cloudtrail_bucket_component_name" {
  type        = string
  description = "The name of the CloudTrail bucket component"
  default     = "cloudtrail-bucket"
}

variable "cloudtrail_bucket_environment_name" {
  type        = string
  description = "The name of the environment where the CloudTrail bucket is provisioned"
}

variable "cloudtrail_bucket_stage_name" {
  type        = string
  description = "The stage name where the CloudTrail bucket is provisioned"
}

variable "is_organization_trail" {
  type        = bool
  default     = false
  description = <<-EOT
  Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account.

  The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the management account
  for an organization in AWS Organizations.
  EOT
}

variable "audit_access_enabled" {
  type        = bool
  default     = false
  description = "If `true`, allows the Audit account access to read Cloudtrail logs directly from S3. This is a requirement for running Athena queries in the Audit account."
}

variable "account_map_component_name" {
  type        = string
  description = "The name of a account-map component"
  default     = "account-map"
}
