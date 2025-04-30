provider "azurerm" {
  features {}
  subscription_id = "323379f3-3beb-4865-821e-0fff68e4d4ca"
}

resource "azurerm_storage_account" "tfstate" {
  name                     = "rdevopsb84tfstates"
  resource_group_name      = "project-setup-1"
  location                 = "UK West"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "tfstates" {
  name                  = "roboshop-state-files"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}

