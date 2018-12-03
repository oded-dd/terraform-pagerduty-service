output "this_pagerduty_service_integration_id" {
  description = "The pagerduty service integration id"
  value       = "${element(split(",", join(",", pagerduty_service_integration.this.*.id)), 0)}"
}
