variable "create" {
  description = "Whether to create pagerduty service resource"
  default     = false
}

variable "service_name" {
  description = "(Required) The name of the service"
  type        = "string"
}

variable "auto_resolve_timeout" {
  description = "(Optional) Time in seconds that an incident is automatically resolved if left open for that long"
  type        = "string"
  default     = "null"
}

variable "acknowledgement_timeout" {
  description = "(Optional) Time in seconds that an incident changes to the Triggered State after being Acknowledged"
  type        = "string"
  default     = "null"
}

variable "escalation_policy" {
  description = "(Required) The escalation policy used by this service"
  type        = "string"
}

variable "alert_creation" {
  description = "(Optional) Must be one of two values. PagerDuty receives events from your monitoring systems and can then create incidents in different ways. Value 'create_incidents' is default: events will create an incident that cannot be merged. Value 'create_alerts_and_incidents' is the alternative: events will create an alert and then add it to a new incident, these incidents can be merged"
  type        = "string"
  default     = "create_incidents"
}
