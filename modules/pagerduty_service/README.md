# pagerduty_service

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| acknowledgement\_timeout | (Optional) Time in seconds that an incident changes to the Triggered State after being Acknowledged | string | `null` | no |
| alert\_creation | (Optional) Must be one of two values. PagerDuty receives events from your monitoring systems and can then create incidents in different ways. Value 'create_incidents' is default: events will create an incident that cannot be merged. Value 'create_alerts_and_incidents' is the alternative: events will create an alert and then add it to a new incident, these incidents can be merged | string | `create_incidents` | no |
| auto\_resolve\_timeout | (Optional) Time in seconds that an incident is automatically resolved if left open for that long | string | `null` | no |
| create | Whether to create pagerduty service resource | string | `false` | no |
| escalation\_policy | (Required) The escalation policy used by this service | string | - | yes |
| service\_name | (Required) The name of the service | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this\_pagerduty\_service\_id | The pagerduty service id |

