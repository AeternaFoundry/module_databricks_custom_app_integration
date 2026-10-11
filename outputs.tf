output "custom_app_integrations_id" {
  description = "Map of id values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no id are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "custom_app_integrations_client_id" {
  description = "Map of client_id values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no client_id are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "custom_app_integrations_client_secret" {
  description = "Map of client_secret values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no client_secret are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "custom_app_integrations_confidential" {
  description = "Map of confidential values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no confidential are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.confidential if v.confidential != null }
}
output "custom_app_integrations_create_time" {
  description = "Map of create_time values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no create_time are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "custom_app_integrations_created_by" {
  description = "Map of created_by values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no created_by are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.created_by if v.created_by != null }
}
output "custom_app_integrations_creator_username" {
  description = "Map of creator_username values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no creator_username are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.creator_username if v.creator_username != null && length(v.creator_username) > 0 }
}
output "custom_app_integrations_integration_id" {
  description = "Map of integration_id values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no integration_id are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.integration_id if v.integration_id != null && length(v.integration_id) > 0 }
}
output "custom_app_integrations_name" {
  description = "Map of name values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no name are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "custom_app_integrations_redirect_urls" {
  description = "Map of redirect_urls values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no redirect_urls are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.redirect_urls if v.redirect_urls != null && length(v.redirect_urls) > 0 }
}
output "custom_app_integrations_scopes" {
  description = "Map of scopes values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no scopes are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.scopes if v.scopes != null && length(v.scopes) > 0 }
}
output "custom_app_integrations_token_access_policy" {
  description = "Map of token_access_policy values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no token_access_policy are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => one(v.token_access_policy) if v.token_access_policy != null && length(v.token_access_policy) > 0 }
}
output "custom_app_integrations_user_authorized_scopes" {
  description = "Map of user_authorized_scopes values across all custom_app_integrations, keyed the same as var.custom_app_integrations except keys with no user_authorized_scopes are omitted"
  value       = { for k, v in databricks_custom_app_integration.custom_app_integrations : k => v.user_authorized_scopes if v.user_authorized_scopes != null && length(v.user_authorized_scopes) > 0 }
}

