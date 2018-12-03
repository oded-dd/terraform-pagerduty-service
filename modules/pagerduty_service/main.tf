resource "pagerduty_service" "this" {
  count                   = "${var.create ? 1 : 0}"

  name                    = "${var.name}"
  description             = "${var.description}"
  auto_resolve_timeout    = "${var.auto_resolve_timeout}" 
  acknowledgement_timeout = "${var.acknowledgement_timeout}" 
  escalation_policy       = "${var.escalation_policy}"
  alert_creation          = "${var.alert_creation}"
}
