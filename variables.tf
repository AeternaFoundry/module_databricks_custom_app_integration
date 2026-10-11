variable "custom_app_integrations" {
  description = <<EOT
Map of custom_app_integrations, attributes below
Optional:
    - client_id
    - client_secret
    - confidential
    - create_time
    - created_by
    - creator_username
    - integration_id
    - name
    - redirect_urls
    - scopes
    - user_authorized_scopes
    - token_access_policy (block):
        - absolute_session_lifetime_in_minutes (optional)
        - access_token_ttl_in_minutes (optional)
        - enable_single_use_refresh_tokens (optional)
        - refresh_token_ttl_in_minutes (optional)
EOT

  type = map(object({
    client_id              = optional(string)
    client_secret          = optional(string)
    confidential           = optional(bool)
    create_time            = optional(string)
    created_by             = optional(number)
    creator_username       = optional(string)
    integration_id         = optional(string)
    name                   = optional(string)
    redirect_urls          = optional(list(string))
    scopes                 = optional(list(string))
    user_authorized_scopes = optional(list(string))
    token_access_policy = optional(object({
      absolute_session_lifetime_in_minutes = optional(number)
      access_token_ttl_in_minutes          = optional(number)
      enable_single_use_refresh_tokens     = optional(bool)
      refresh_token_ttl_in_minutes         = optional(number)
    }))
  }))
}

