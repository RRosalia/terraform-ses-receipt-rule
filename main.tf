resource "aws_ses_receipt_rule_set" "this" {
  rule_set_name = var.rule_set_name
}

resource "aws_ses_receipt_rule" "this" {
  rule_set_name = aws_ses_receipt_rule_set.this.rule_set_name
  name          = var.rule_name

  recipients = var.recipients

  enabled = true

  s3_action {
    bucket_name      = var.s3_bucket_name
    object_key_prefix = var.s3_object_key_prefix
    topic_arn         = var.sns_topic_arn # Optional SNS Topic
  }

  scan_enabled = var.scan_enabled
  stop_process = var.stop_process
}
