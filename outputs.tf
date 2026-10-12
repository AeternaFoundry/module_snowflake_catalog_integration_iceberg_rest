output "catalog_integration_iceberg_rests_id" {
  description = "Map of id values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no id are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.id if v.id != null && length(v.id) > 0 }
}
output "catalog_integration_iceberg_rests_bearer_rest_authentication" {
  description = "Map of bearer_rest_authentication values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no bearer_rest_authentication are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => one(v.bearer_rest_authentication) if v.bearer_rest_authentication != null && length(v.bearer_rest_authentication) > 0 }
  sensitive   = true
}
output "catalog_integration_iceberg_rests_catalog_namespace" {
  description = "Map of catalog_namespace values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no catalog_namespace are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.catalog_namespace if v.catalog_namespace != null && length(v.catalog_namespace) > 0 }
}
output "catalog_integration_iceberg_rests_catalog_source" {
  description = "Map of catalog_source values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no catalog_source are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.catalog_source if v.catalog_source != null && length(v.catalog_source) > 0 }
}
output "catalog_integration_iceberg_rests_comment" {
  description = "Map of comment values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no comment are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "catalog_integration_iceberg_rests_describe_output" {
  description = "Map of describe_output values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "catalog_integration_iceberg_rests_enabled" {
  description = "Map of enabled values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no enabled are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.enabled if v.enabled != null }
}
output "catalog_integration_iceberg_rests_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "catalog_integration_iceberg_rests_name" {
  description = "Map of name values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no name are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.name if v.name != null && length(v.name) > 0 }
}
output "catalog_integration_iceberg_rests_oauth_rest_authentication" {
  description = "Map of oauth_rest_authentication values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no oauth_rest_authentication are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => one(v.oauth_rest_authentication) if v.oauth_rest_authentication != null && length(v.oauth_rest_authentication) > 0 }
  sensitive   = true
}
output "catalog_integration_iceberg_rests_refresh_interval_seconds" {
  description = "Map of refresh_interval_seconds values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no refresh_interval_seconds are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.refresh_interval_seconds if v.refresh_interval_seconds != null }
}
output "catalog_integration_iceberg_rests_rest_config" {
  description = "Map of rest_config values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no rest_config are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => one(v.rest_config) if v.rest_config != null && length(v.rest_config) > 0 }
}
output "catalog_integration_iceberg_rests_show_output" {
  description = "Map of show_output values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no show_output are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "catalog_integration_iceberg_rests_sigv4_rest_authentication" {
  description = "Map of sigv4_rest_authentication values across all catalog_integration_iceberg_rests, keyed the same as var.catalog_integration_iceberg_rests except keys with no sigv4_rest_authentication are omitted"
  value       = { for k, v in snowflake_catalog_integration_iceberg_rest.catalog_integration_iceberg_rests : k => one(v.sigv4_rest_authentication) if v.sigv4_rest_authentication != null && length(v.sigv4_rest_authentication) > 0 }
}

