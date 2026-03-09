resource "azurerm_resource_group" "rg" {
  name     = "rg-cr460-ahmed"
  location = "France Central"
}
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-cr460-ahmed"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
