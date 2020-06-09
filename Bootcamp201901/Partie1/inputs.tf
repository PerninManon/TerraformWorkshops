variable "client_id" {
  description = "Client Id of the Service Principal"
  default     = "f6873fe5-7066-4613-bea1-9f3227aa0eab"
}

variable "tenant_id" {
  description = "Id of the Azure tenant - Azure AD repository"
  default     = "757bdf2a-9fe4-43ea-b5c9-fdb554650622"
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
