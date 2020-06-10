resource "azurerm_key_vault" "bootcamp_keyvault" {
  name                = local.keyvault_name
  location            = var.primary_location
  resource_group_name = azurerm_resource_group.bootcamprg.name

  sku_name                        = var.keyvault_sku
  tenant_id                       = var.tenant_id
  enabled_for_template_deployment = true
  tags                            = local.common_tags
}

data "azurerm_monitor_diagnostic_categories" "keyvault" {
  resource_id = azurerm_key_vault.bootcamp_keyvault.id
}

resource "azurerm_key_vault_access_policy" "bootcamp_service_principal_policy" {
  key_vault_id = azurerm_key_vault.bootcamp_keyvault.id
  tenant_id    = var.tenant_id
  object_id    = var.client_id

  key_permissions = [
    "backup",
    "create",
    "decrypt",
    "delete",
    "encrypt",
    "get",
    "import",
    "list",
    "purge",
    "recover",
    "restore",
    "sign",
    "unwrapKey",
    "update",
    "verify",
    "wrapKey",
  ]

  secret_permissions = [
    "backup",
    "delete",
    "get",
    "list",
    "purge",
    "recover",
    "restore",
    "set",
  ]
}
