resource "azurerm_storage_account" "example" {
  name                     = "rdevopsb74tfstate"
  resource_group_name      = "project-setup-1"
  location                 = "UK West"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

