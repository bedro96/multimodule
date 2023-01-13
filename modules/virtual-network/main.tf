# Create virtual network
resource "azurerm_virtual_network" "tf_virtual_network" {
  name                = "tfVnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.virtual_network_group_location
  resource_group_name = var.virtual_network_resource_group_name
}

# Create subnet
resource "azurerm_subnet" "tf_server_subnet" {
  name                 = "tfServerSubnet"
  resource_group_name  = var.virtual_network_resource_group_name
  virtual_network_name = azurerm_virtual_network.tf_virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}