variable "verifiedpermissions_identity_sources" {
  description = <<EOT
Map of verifiedpermissions_identity_sources, attributes below
Required:
    - policy_store_id
Optional:
    - principal_entity_type
    - region
    - configuration (block):
        - cognito_user_pool_configuration (optional, block):
            - client_ids (optional)
            - group_configuration (optional, block):
                - group_entity_type (required)
            - user_pool_arn (required)
        - open_id_connect_configuration (optional, block):
            - entity_id_prefix (optional)
            - group_configuration (optional, block):
                - group_claim (required)
                - group_entity_type (required)
            - issuer (required)
            - token_selection (optional, block):
                - access_token_only (optional, block):
                    - audiences (optional)
                    - principal_id_claim (optional)
                - identity_token_only (optional, block):
                    - client_ids (optional)
                    - principal_id_claim (optional)
EOT

  type = map(object({
    policy_store_id       = string
    principal_entity_type = optional(string)
    region                = optional(string)
    configuration = optional(list(object({
      cognito_user_pool_configuration = optional(list(object({
        client_ids = optional(list(string))
        group_configuration = optional(list(object({
          group_entity_type = string
        })))
        user_pool_arn = string
      })))
      open_id_connect_configuration = optional(list(object({
        entity_id_prefix = optional(string)
        group_configuration = optional(list(object({
          group_claim       = string
          group_entity_type = string
        })))
        issuer = string
        token_selection = optional(list(object({
          access_token_only = optional(list(object({
            audiences          = optional(list(string))
            principal_id_claim = optional(string)
          })))
          identity_token_only = optional(list(object({
            client_ids         = optional(list(string))
            principal_id_claim = optional(string)
          })))
        })))
      })))
    })))
  }))
}

