output "kv_logs" {
  value = "${data.azurerm_monitor_diagnostic_categories.keyvault.logs}"
}

output "kv_metrics" {
  value = "${data.azurerm_monitor_diagnostic_categories.keyvault.metrics}"
}
