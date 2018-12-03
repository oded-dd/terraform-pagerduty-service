variable "create" {
  description = "Whether to create pagerduty service resource"
  default     = false
}

variable "name" {
  description = "(Optional) The name of the service extension"
  type        = "string"
}

variable "endpoint_url" {
  description = "(Optional) The url of the extension"
  type        = "string"
}

variable "extension_schema" {
  description = "(Required) This is the schema for this extension"
  type        = "string"
}

variable "extension_objects" {
  description = "(Required) This is the objects for which the extension applies"
  type        = "list"
  default     = []
}

variable "config" {
  description = "(Optional) The configuration of the service extension as string containing plain JSON-encoded data"
  type        = "string"
}
