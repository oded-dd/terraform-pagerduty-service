resource "pagerduty_service_integration" "this" {
  count                   = "${var.create ? 1 : 0}"

  service                 = "${var.service}"
  name		          = "${var.name}"
  type                    = "${var.type}" 
  vendor                  = "${var.vendor}" 
  integration_key         = "${var.integration_key}"
  integration_email       = "${var.integration_email}"
}
