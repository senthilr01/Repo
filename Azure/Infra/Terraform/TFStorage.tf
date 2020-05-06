provider "azurerm" {
    version = "=2.0.0"
    features {}
}

variable "region" {}
variable "ResourceGroup" {}
variable "Storage_Account_Name" {}

resource "azurerm_storage_account" "sa" {
    name = var.Storage_Account_Name
    resource_group_name = var.ResourceGroup
    location = var.region
    account_tier = "Standard"
    account_replication_type = "GRS"
    tags = {
        environment = "Terraform"
        createdBy = "Admin"
    }
}