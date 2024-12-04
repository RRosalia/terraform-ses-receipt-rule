output "rule_set_name" {
  description = "Name of the created SES rule set"
  value       = aws_ses_receipt_rule_set.this.rule_set_name
}

output "rule_name" {
  description = "Name of the created SES receipt rule"
  value       = aws_ses_receipt_rule.this.name
}
