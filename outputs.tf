output "plugins_id" {
  description = "Map of id values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.id }
}
output "plugins_alias" {
  description = "Map of alias values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.alias }
}
output "plugins_enable_timeout" {
  description = "Map of enable_timeout values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.enable_timeout }
}
output "plugins_enabled" {
  description = "Map of enabled values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.enabled }
}
output "plugins_env" {
  description = "Map of env values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.env }
}
output "plugins_force_destroy" {
  description = "Map of force_destroy values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.force_destroy }
}
output "plugins_force_disable" {
  description = "Map of force_disable values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.force_disable }
}
output "plugins_grant_all_permissions" {
  description = "Map of grant_all_permissions values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.grant_all_permissions }
}
output "plugins_grant_permissions" {
  description = "Map of grant_permissions values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.grant_permissions }
}
output "plugins_name" {
  description = "Map of name values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.name }
}
output "plugins_plugin_reference" {
  description = "Map of plugin_reference values across all plugins, keyed the same as var.plugins"
  value       = { for k, v in docker_plugin.plugins : k => v.plugin_reference }
}

