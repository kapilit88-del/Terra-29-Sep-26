
resource "azurerm_resource_group" "rg88" {
  name     = var.rg88.name
  location = var.rg88.location

}

resource "azurerm_virtual_network" "vnet99" {
  name                = var.vnet99.name
  location            = var.vnet99.location
  resource_group_name = var.rg88.name
  address_space       = var.vnet99.address_space
  dns_servers         = var.vnet99.dns_servers
}

resource "azurerm_subnet" "subnet77" {
  name                 = var.subnet77.name
  resource_group_name  = var.rg88.name
  virtual_network_name = var.vnet99.name
  address_prefixes     = var.subnet77.address_prefixes
}

resource "azurerm_network_security_group" "web_nsg" {
  name                = var.web_nsg.name
  location            = var.web_nsg.location
  resource_group_name = var.rg88.name

}

resource "azurerm_network_security_rule" "allow_https" {
  name                       = var.allow_https.name
  priority                   = var.allow_https.priority
  direction                  = var.allow_https.direction
  access                     = var.allow_https.access
  protocol                   = var.allow_https.protocol
  source_port_range          = var.allow_https.source_port_range
  destination_port_range     = var.allow_https.destination_port_range
  source_address_prefix      = var.allow_https.source_address_prefix
  destination_address_prefix = var.allow_https.destination_address_prefix

  resource_group_name         = var.rg88.name
  network_security_group_name = var.web_nsg.name
}

# resource "azurerm_subnet_network_security_group_association" "subnet77" {
#   subnet_id                 = var.subnet77.subnet_id
#   network_security_group_id = var.web_nsg.network_security_group_id
# }

resource "azurerm_subnet_network_security_group_association" "subnet77" {
  subnet_id                 = azurerm_subnet.subnet77.id
  network_security_group_id = azurerm_network_security_group.web_nsg.id
}

# create vnet-
# create subnet-
# create network security group-
# create network security rule-
# create network security group association


