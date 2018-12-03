# pagerduty_service_integration

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | Whether to create pagerduty service resource | string | `false` | no |
| integration\_email | (Optional) This is the unique fully-qualified email address used for routing emails to this integration for processing | string | - | yes |
| integration\_key | (Optional) This is the unique key used to route events to this integration when received via the PagerDuty Events API | string | - | yes |
| name | (Optional) The name of the service integration | string | - | yes |
| service | (Required) The ID of the service the integration should belong to | string | - | yes |
| type | (Optional) The service type | string | - | yes |
| vendor | (Optional) The ID of the vendor the integration should integrate with | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this\_pagerduty\_service\_integration\_id | The pagerduty service integration id |

