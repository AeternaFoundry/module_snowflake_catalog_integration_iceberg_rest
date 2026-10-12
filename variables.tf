variable "catalog_integration_iceberg_rests" {
  description = <<EOT
Map of catalog_integration_iceberg_rests, attributes below
Required:
    - enabled
    - name
    - rest_config (block):
        - access_delegation_mode (optional)
        - catalog_api_type (optional)
        - catalog_name (optional)
        - catalog_uri (required)
        - prefix (optional)
Optional:
    - catalog_namespace
    - comment
    - refresh_interval_seconds
    - bearer_rest_authentication (block):
        - bearer_token (required)
    - oauth_rest_authentication (block):
        - oauth_allowed_scopes (required)
        - oauth_client_id (required)
        - oauth_client_secret (required)
        - oauth_token_uri (optional)
    - sigv4_rest_authentication (block):
        - sigv4_external_id (optional)
        - sigv4_iam_role (required)
        - sigv4_signing_region (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    enabled                  = bool
    name                     = string
    catalog_namespace        = optional(string)
    comment                  = optional(string)
    refresh_interval_seconds = optional(number)
    rest_config = object({
      access_delegation_mode = optional(string)
      catalog_api_type       = optional(string)
      catalog_name           = optional(string)
      catalog_uri            = string
      prefix                 = optional(string)
    })
    bearer_rest_authentication = optional(object({
      bearer_token = string
    }))
    oauth_rest_authentication = optional(object({
      oauth_allowed_scopes = list(string)
      oauth_client_id      = string
      oauth_client_secret  = string
      oauth_token_uri      = optional(string)
    }))
    sigv4_rest_authentication = optional(object({
      sigv4_external_id    = optional(string)
      sigv4_iam_role       = string
      sigv4_signing_region = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

