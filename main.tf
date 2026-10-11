resource "databricks_custom_app_integration" "custom_app_integrations" {
  for_each = var.custom_app_integrations

  client_id              = each.value.client_id
  client_secret          = each.value.client_secret
  confidential           = each.value.confidential
  create_time            = each.value.create_time
  created_by             = each.value.created_by
  creator_username       = each.value.creator_username
  integration_id         = each.value.integration_id
  name                   = each.value.name
  redirect_urls          = each.value.redirect_urls
  scopes                 = each.value.scopes
  user_authorized_scopes = each.value.user_authorized_scopes

  dynamic "token_access_policy" {
    for_each = each.value.token_access_policy != null ? [each.value.token_access_policy] : []
    content {
      absolute_session_lifetime_in_minutes = token_access_policy.value.absolute_session_lifetime_in_minutes
      access_token_ttl_in_minutes          = token_access_policy.value.access_token_ttl_in_minutes
      enable_single_use_refresh_tokens     = token_access_policy.value.enable_single_use_refresh_tokens
      refresh_token_ttl_in_minutes         = token_access_policy.value.refresh_token_ttl_in_minutes
    }
  }
}

