resource "docker_plugin" "plugins" {
  for_each = var.plugins

  name                  = each.value.name
  alias                 = each.value.alias
  enable_timeout        = each.value.enable_timeout
  enabled               = each.value.enabled
  env                   = each.value.env
  force_destroy         = each.value.force_destroy
  force_disable         = each.value.force_disable
  grant_all_permissions = each.value.grant_all_permissions

  dynamic "grant_permissions" {
    for_each = each.value.grant_permissions != null ? each.value.grant_permissions : []
    content {
      name  = grant_permissions.value.name
      value = grant_permissions.value.value
    }
  }
}

