variable "plugins" {
  description = <<EOT
Map of plugins, attributes below
Required:
    - name
Optional:
    - alias
    - enable_timeout
    - enabled
    - env
    - force_destroy
    - force_disable
    - grant_all_permissions
    - grant_permissions (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    name                  = string
    alias                 = optional(string)
    enable_timeout        = optional(number)
    enabled               = optional(bool)
    env                   = optional(set(string))
    force_destroy         = optional(bool)
    force_disable         = optional(bool)
    grant_all_permissions = optional(bool)
    grant_permissions = optional(list(object({
      name  = string
      value = set(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

