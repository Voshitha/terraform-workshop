resource "azurerm_network_interface" "networkInterface" {
  name                = "example-nic"
  location            = var.location
  resource_group_name = var.resourceName

    ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sb1.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.vmName
  resource_group_name = var.resourceName
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.networkInterface.id,
  ]
}