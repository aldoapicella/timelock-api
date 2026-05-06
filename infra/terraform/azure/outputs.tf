output "acr_name" {
  description = "Azure Container Registry name."
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  description = "Azure Container Registry login server."
  value       = azurerm_container_registry.acr.login_server
}

output "app_name" {
  description = "Azure Container App name."
  value       = azurerm_container_app.api.name
}

output "app_url" {
  description = "Public TimeLock API URL."
  value       = "https://${azurerm_container_app.api.latest_revision_fqdn}"
}

output "postgres_server_name" {
  description = "Azure Database for PostgreSQL Flexible Server name."
  value       = azurerm_postgresql_flexible_server.postgres.name
}

output "postgres_database_name" {
  description = "PostgreSQL database name."
  value       = azurerm_postgresql_flexible_server_database.app.name
}
