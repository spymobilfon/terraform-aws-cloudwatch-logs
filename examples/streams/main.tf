module "cloudwatch_logs" {
  source = "../.."
  name   = "/log1/log2/log3"
  streams = [
    "stream1",
    "stream2",
    "stream3"
  ]
}
