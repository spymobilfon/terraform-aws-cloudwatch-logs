resource "aws_cloudwatch_log_group" "this" {
  name              = var.name
  retention_in_days = var.retention_in_days
  kms_key_id        = var.kms_key_id
  tags = merge(
    var.tags,
    { CreatedBy = "terraform", Name = var.name }
  )
}

resource "aws_cloudwatch_log_stream" "this" {
  for_each       = toset(var.streams)
  name           = each.key
  log_group_name = aws_cloudwatch_log_group.this.name
}

resource "aws_cloudwatch_log_subscription_filter" "this" {
  for_each        = var.subscription_filters
  name            = each.key
  role_arn        = each.value.role
  log_group_name  = var.name
  filter_pattern  = lookup(each.value, "filter_pattern", "")
  destination_arn = each.value.destination
  distribution    = lookup(each.value, "distribution", null)
}
