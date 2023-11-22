# AWS CloudWatch Logs Terraform module

Terraform module which creates AWS CloudWatch Logs

## Usage

```hcl
module "cloudwatch_logs" {
  source = "spymobilfon/cloudwatch-logs/aws"
  name   = "/log1/log2/log3"
}
```

## Examples
- [Simple](examples/simple/): Create only AWS CloudWatch Log Group
- [Streams](examples/streams/): Create AWS CloudWatch Log Group with streams
- [Subscription Filters](examples/subscription_filters/): Create AWS CloudWatch Log Group with streams and subscription filters

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_cloudwatch_log_stream.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_stream) | resource |
| [aws_cloudwatch_log_subscription_filter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN of the KMS key to use when encrypting log data. Please be sure that the KMS key has an appropriate key policy (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/encrypt-log-data-kms.html). | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the log group. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | The number of days to retain log events. Default retention: 30 days. Possible values: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1096, 1827, 2192, 2557, 2922, 3288, 3653, and 0. If set 0, the events in the log group are always retained and never expire. | `number` | `30` | no |
| <a name="input_streams"></a> [streams](#input\_streams) | A list of log streams into log group. | `list(string)` | `[]` | no |
| <a name="input_subscription_filters"></a> [subscription\_filters](#input\_subscription\_filters) | The log group subscription filters. | `map(map(string))` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resources. | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
