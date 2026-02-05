provider "azurerm" {
  features {}
}

module "aks" {
  source = "./modules/aks"

  aks_name            = "test-kevin-aks"
  resource_group_name = var.resource_group_name
  acr_name            = var.acr_name

  ##overrides to module can be
  #node_count = **
  #vm_size = **
}