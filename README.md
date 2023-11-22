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
<!-- END_TF_DOCS -->
