variable "subscription_id" {
  description = "Id of the Azure subscription"
  default     = "ad6b1e06-9548-446b-bf11-9a0a6ecf63c5"
}

variable "client_id" {
  description = "Client Id of the Service Principal"
  default     = "4f653689-051b-411c-ad16-b6ad6e999245"
}

variable "client_secret" {
  description = "Client Secret for the Service Principal"
  default     = "105b82fe-573f-4ffa-897c-38482019ce66"
}

variable "tenant_id" {
  description = "Id of the Azure tenant - Azure AD repository"
  default     = "31a27808-7189-4676-95ec-7a72a8ee6789"
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
