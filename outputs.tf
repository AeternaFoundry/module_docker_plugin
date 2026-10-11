output "plugins_id" {
  description = "Map of id values across all plugins, keyed the same as var.plugins except keys with no id are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.id if v.id != null && length(v.id) > 0 }
}
output "plugins_alias" {
  description = "Map of alias values across all plugins, keyed the same as var.plugins except keys with no alias are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "plugins_enable_timeout" {
  description = "Map of enable_timeout values across all plugins, keyed the same as var.plugins except keys with no enable_timeout are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.enable_timeout if v.enable_timeout != null }
}
output "plugins_enabled" {
  description = "Map of enabled values across all plugins, keyed the same as var.plugins except keys with no enabled are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.enabled if v.enabled != null }
}
output "plugins_env" {
  description = "Map of env values across all plugins, keyed the same as var.plugins except keys with no env are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.env if v.env != null && length(v.env) > 0 }
}
output "plugins_force_destroy" {
  description = "Map of force_destroy values across all plugins, keyed the same as var.plugins except keys with no force_destroy are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.force_destroy if v.force_destroy != null }
}
output "plugins_force_disable" {
  description = "Map of force_disable values across all plugins, keyed the same as var.plugins except keys with no force_disable are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.force_disable if v.force_disable != null }
}
output "plugins_grant_all_permissions" {
  description = "Map of grant_all_permissions values across all plugins, keyed the same as var.plugins except keys with no grant_all_permissions are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.grant_all_permissions if v.grant_all_permissions != null }
}
output "plugins_grant_permissions" {
  description = "Map of grant_permissions values across all plugins, keyed the same as var.plugins except keys with no grant_permissions are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.grant_permissions if v.grant_permissions != null && length(v.grant_permissions) > 0 }
}
output "plugins_name" {
  description = "Map of name values across all plugins, keyed the same as var.plugins except keys with no name are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.name if v.name != null && length(v.name) > 0 }
}
output "plugins_plugin_reference" {
  description = "Map of plugin_reference values across all plugins, keyed the same as var.plugins except keys with no plugin_reference are omitted"
  value       = { for k, v in docker_plugin.plugins : k => v.plugin_reference if v.plugin_reference != null && length(v.plugin_reference) > 0 }
}

