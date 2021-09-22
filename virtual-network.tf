resource "azurerm_virtual_network" "virtualNetworkId" {
  name                = var.vitualNetworkName
  location            = var.location
  resource_group_name = azurerm_resource_group.rgMyResourceId.name
  address_space       = ["10.0.0.0/16"]
}