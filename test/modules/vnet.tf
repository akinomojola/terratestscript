resource "azurerm_virtual_network" "test_vnet" {
  name                = "Core-Test-Vnet" #var.vnet_name
  location            = "west us" #var.location
  resource_group_name = azurerm_resource_group.test_grp.name
  address_space       = ["10.7.0.0/16"] #var.vnet_prefix
 
  tags = {
    environment = "Test" #var.tags
  }

}