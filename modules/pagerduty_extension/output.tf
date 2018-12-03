output "this_pagerduty_extension_id" {
  description = "The pagerduty extension id"
  value       = "${element(split(",", join(",", pagerduty_extension.this.*.id)), 0)}"
}
