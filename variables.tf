variable "name" {
  description = "The name of the log group."
  type        = string
}

variable "retention_in_days" {
  description = "The number of days to retain log events. Default retention: 30 days. Possible values: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0. If set 0, the events in the log group are always retained and never expire."
  type        = number
  default     = 30
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use when encrypting log data. Please be sure that the KMS key has an appropriate key policy (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/encrypt-log-data-kms.html)."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

variable "streams" {
  description = "A list of log streams into log group."
  type        = list(string)
  default     = []
}

variable "subscription_filters" {
  description = "The log group subscription filters."
  type        = map(map(string))
  default     = {}
  validation {
    condition     = length(keys(var.subscription_filters)) >= 0 && length(keys(var.subscription_filters)) <= 2
    error_message = "Supporting up to only 2 subscription filters per log group."
  }
}
