# pagerduty_extension

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| config | (Optional) The configuration of the service extension as string containing plain JSON-encoded data | string | - | yes |
| create | Whether to create pagerduty service resource | string | `false` | no |
| endpoint\_url | (Optional) The url of the extension | string | - | yes |
| extension\_objects | (Required) This is the objects for which the extension applies | list | - | yes |
| extension\_schema | (Required) This is the schema for this extension | string | - | yes |
| name | (Optional) The name of the service extension | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| this\_pagerduty\_extension\_id | The pagerduty extension id |

