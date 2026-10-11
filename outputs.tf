output "verifiedpermissions_identity_sources_id" {
  description = "Map of id values across all verifiedpermissions_identity_sources, keyed the same as var.verifiedpermissions_identity_sources"
  value       = { for k, v in aws_verifiedpermissions_identity_source.verifiedpermissions_identity_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "verifiedpermissions_identity_sources_configuration" {
  description = "Map of configuration values across all verifiedpermissions_identity_sources, keyed the same as var.verifiedpermissions_identity_sources"
  value       = { for k, v in aws_verifiedpermissions_identity_source.verifiedpermissions_identity_sources : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "verifiedpermissions_identity_sources_policy_store_id" {
  description = "Map of policy_store_id values across all verifiedpermissions_identity_sources, keyed the same as var.verifiedpermissions_identity_sources"
  value       = { for k, v in aws_verifiedpermissions_identity_source.verifiedpermissions_identity_sources : k => v.policy_store_id if v.policy_store_id != null && length(v.policy_store_id) > 0 }
}
output "verifiedpermissions_identity_sources_principal_entity_type" {
  description = "Map of principal_entity_type values across all verifiedpermissions_identity_sources, keyed the same as var.verifiedpermissions_identity_sources"
  value       = { for k, v in aws_verifiedpermissions_identity_source.verifiedpermissions_identity_sources : k => v.principal_entity_type if v.principal_entity_type != null && length(v.principal_entity_type) > 0 }
}
output "verifiedpermissions_identity_sources_region" {
  description = "Map of region values across all verifiedpermissions_identity_sources, keyed the same as var.verifiedpermissions_identity_sources"
  value       = { for k, v in aws_verifiedpermissions_identity_source.verifiedpermissions_identity_sources : k => v.region if v.region != null && length(v.region) > 0 }
}

