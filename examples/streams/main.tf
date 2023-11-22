module "cloudwatch_logs" {
  source = "spymobilfon/cloudwatch-logs/aws"
  name   = "/log1/log2/log3"
  streams = [
    "stream1",
    "stream2",
    "stream3"
  ]
}
