variable "create" {
  description = "Whether to create pagerduty service resource"
  default     = false
}

variable "service" {
  description = "(Required) The ID of the service the integration should belong to"
  type        = "string"
}

variable "name" {
  description = "(Optional) The name of the service integration"
  type        = "string"
}

variable "type" {
  description = "(Optional) The service type"
  type        = "string"
}

variable "vendor" {
  description = "(Optional) The ID of the vendor the integration should integrate with"
  type        = "string"
}

variable "integration_key" {
  description = "(Optional) This is the unique key used to route events to this integration when received via the PagerDuty Events API"
  type        = "string"
}

variable "integration_email" {
  description = "(Optional) This is the unique fully-qualified email address used for routing emails to this integration for processing"
  type        = "string"
}
