provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "bootcamprg" {
  name     = local.rg_name
  location = var.primary_location
  tags     = local.common_tags
}
