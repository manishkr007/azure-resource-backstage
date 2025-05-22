variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the Resource Group will be created."
  type        = string
  default     = "West Europe"
}

variable "resource_group_tag_key" {
  description = "The key for the resource group tag."
  type        = string
  default     = "department"
}

variable "resource_group_tag_value" {
  description = "The value for the resource group tag."
  type        = string
  default     = "SRE"
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
}

variable "storage_account_resource_group" {
  description = "The resource group to associate the storage account with."
  type        = string
}

variable "storage_account_sku" {
  description = "The SKU of the storage account."
  type        = string
  default     = "Standard_LRS"
}

variable "storage_account_access_tier" {
  description = "The access tier for the storage account."
  type        = string
  default     = "Hot"
}

variable "storage_account_tag_key" {
  description = "The key for the storage account tag."
  type        = string
  default     = "department"
}

variable "storage_account_tag_value" {
  description = "The value for the storage account tag."
  type        = string
  default     = "SRE"
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
  default     = "sre"
}

variable "container_type" {
  description = "The type of the container (private, blob)."
  type        = string
  default     = "private"
}