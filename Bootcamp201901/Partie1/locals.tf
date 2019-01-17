locals {
  naming_prefix = "manon-${var.env}"
  rg_name       = "${local.naming_prefix}-rg"
  keyvault_name = "${local.naming_prefix}-kv"

  common_tags = {
    environment = "${var.env}"
  }
}
