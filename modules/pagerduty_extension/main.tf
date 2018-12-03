resource "pagerduty_extension" "this" {
  count                   = "${var.create ? 1 : 0}"

  name                    = "${var.name}"
  endpoint_url            = "${var.endpoint_url}"
  extension_schema        = "${var.extension_schema}" 
  extension_objects       = ["${var.extension_objects}"]
  config                  = "${var.config}"
}
