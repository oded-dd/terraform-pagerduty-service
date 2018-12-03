output "this_pagerduty_service_id" {
  description = "The pagerduty service id"
  value       = "${element(split(",", join(",", pagerduty_service.this.*.id)), 0)}"
}
