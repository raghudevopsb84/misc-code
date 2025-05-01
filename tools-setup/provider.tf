provider "azurerm" {
  features {}
  subscription_id = "323379f3-3beb-4865-821e-0fff68e4d4ca"
}

terraform {
  backend "azurerm" {
    subscription_id      = "323379f3-3beb-4865-821e-0fff68e4d4ca"
    resource_group_name  = "project-setup-1"
    storage_account_name = "rdevopsb84tfstates"
    container_name       = "roboshop-state-files"
    key                  = "tools.terraform.tfstate"

  }
}

