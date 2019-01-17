variable "subscription_id" {
  description = "Id of the Azure subscription"
  default     = ""
}

variable "client_id" {
  description = "Client Id of the Service Principal"
  default     = ""
}

variable "client_secret" {
  description = "Client Secret for the Service Principal"
  default     = ""
}

variable "tenant_id" {
  description = "Id of the Azure tenant - Azure AD repository"
  default     = ""
}

variable "env" {
  description = "Environment name"
  default     = "bc201901"
}

variable "primary_location" {
  description = "Default Azure location"
  default     = "North Europe"
}

variable "keyvault_sku" {
  description = "SKU name to specify whether the key vault is a standard or premium vault"
  default     = "standard"
}
