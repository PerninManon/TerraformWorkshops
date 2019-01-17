provider "azurerm" {
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

resource "azurerm_resource_group" "bootcamp201901" {
  name     = "${local.rg_name}"
  location = "${var.primary_location}"
  tags     = "${local.common_tags}"
}
