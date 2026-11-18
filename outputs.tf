output "securityhub_feature_v2s_feature_name" {
  description = "Map of feature_name values across all securityhub_feature_v2s, keyed the same as var.securityhub_feature_v2s"
  value       = { for k, v in aws_securityhub_feature_v2.securityhub_feature_v2s : k => v.feature_name if v.feature_name != null && length(v.feature_name) > 0 }
}
output "securityhub_feature_v2s_feature_status" {
  description = "Map of feature_status values across all securityhub_feature_v2s, keyed the same as var.securityhub_feature_v2s"
  value       = { for k, v in aws_securityhub_feature_v2.securityhub_feature_v2s : k => v.feature_status if v.feature_status != null && length(v.feature_status) > 0 }
}
output "securityhub_feature_v2s_region" {
  description = "Map of region values across all securityhub_feature_v2s, keyed the same as var.securityhub_feature_v2s"
  value       = { for k, v in aws_securityhub_feature_v2.securityhub_feature_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}

