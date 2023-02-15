# ## CREATE  VIRTUAL NETWORK PEEERING
resource "azurerm_virtual_network_peering" "peering-1" {
  name                      = "Test-Dev"
  resource_group_name       = "zho_testRG" #var.resource_group_name
  virtual_network_name      = "Core-Test-Vnet"
  remote_virtual_network_id = "/subscriptions/c4f83d6a-ca80-468b-b372-565f768be207/resourceGroups/zho_testRG/providers/Microsoft.Network/virtualNetworks/Core-Test-Vnet"
}

 resource "azurerm_virtual_network_peering" "peering-2" {
   name                      = "Dev-Test"
   resource_group_name       = "zho_devRG"
   virtual_network_name      = "Core-Dev-Vnet"
   remote_virtual_network_id = "/subscriptions/c4f83d6a-ca80-468b-b372-565f768be207/resourceGroups/zho_devRG/providers/Microsoft.Network/virtualNetworks/Core-Dev-Vnet"
}