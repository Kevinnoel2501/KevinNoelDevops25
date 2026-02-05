terraform {
  backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "testkevinsto"
    container_name       = "tfstate"
    key                  = "aks/aks.tfstate"
  }
}
