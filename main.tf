resource "snowflake_catalog_integration_iceberg_rest" "catalog_integration_iceberg_rests" {
  for_each = var.catalog_integration_iceberg_rests

  enabled                  = each.value.enabled
  name                     = each.value.name
  catalog_namespace        = each.value.catalog_namespace
  comment                  = each.value.comment
  refresh_interval_seconds = each.value.refresh_interval_seconds

  rest_config {
    access_delegation_mode = each.value.rest_config.access_delegation_mode
    catalog_api_type       = each.value.rest_config.catalog_api_type
    catalog_name           = each.value.rest_config.catalog_name
    catalog_uri            = each.value.rest_config.catalog_uri
    prefix                 = each.value.rest_config.prefix
  }

  dynamic "bearer_rest_authentication" {
    for_each = each.value.bearer_rest_authentication != null ? [each.value.bearer_rest_authentication] : []
    content {
      bearer_token = bearer_rest_authentication.value.bearer_token
    }
  }

  dynamic "oauth_rest_authentication" {
    for_each = each.value.oauth_rest_authentication != null ? [each.value.oauth_rest_authentication] : []
    content {
      oauth_allowed_scopes = oauth_rest_authentication.value.oauth_allowed_scopes
      oauth_client_id      = oauth_rest_authentication.value.oauth_client_id
      oauth_client_secret  = oauth_rest_authentication.value.oauth_client_secret
      oauth_token_uri      = oauth_rest_authentication.value.oauth_token_uri
    }
  }

  dynamic "sigv4_rest_authentication" {
    for_each = each.value.sigv4_rest_authentication != null ? [each.value.sigv4_rest_authentication] : []
    content {
      sigv4_external_id    = sigv4_rest_authentication.value.sigv4_external_id
      sigv4_iam_role       = sigv4_rest_authentication.value.sigv4_iam_role
      sigv4_signing_region = sigv4_rest_authentication.value.sigv4_signing_region
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

