resource "azurerm_subnet" "sb1" {
  name                 = var.subnet1
  resource_group_name  = azurerm_resource_group.rgMyResourceId.name
  virtual_network_name = azurerm_virtual_network.virtualNetworkId.name
  address_prefixes     = ["10.0.1.0/24"] 
}

resource "azurerm_subnet" "sb2" {
  name                 = var.subnet2
  resource_group_name  = azurerm_resource_group.rgMyResourceId.name
  virtual_network_name = azurerm_virtual_network.virtualNetworkId.name
  address_prefixes     = ["10.0.2.0/24"]
}