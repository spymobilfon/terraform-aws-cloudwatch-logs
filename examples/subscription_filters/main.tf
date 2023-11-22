module "cloudwatch_logs" {
  source = "spymobilfon/cloudwatch-logs/aws"
  name   = "/log1/log2/log3"
  streams = [
    "stream1",
    "stream2",
    "stream3"
  ]
  subscription_filters = {
    filter1 = {
      role        = "arn:aws:iam::123456789000:role/example-role"
      destination = "arn:aws:logs:eu-central-1:123456789000:destination:example-destination"
    }
    filter2 = {
      role           = "arn:aws:iam::123456789000:role/example-role"
      destination    = "arn:aws:logs:eu-central-1:123456789000:destination:example-destination"
      filter_pattern = "pattern"
      distribution   = "Random"
    }
  }
}
