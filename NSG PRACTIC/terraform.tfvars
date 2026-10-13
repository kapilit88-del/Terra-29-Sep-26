
rg88 = {
    name = "AK47"
    location = "Central India"
}

vnet99 = {

   name                = "vnet47"
   location            =  "Central India"
   resource_group_name =  "AK47"
   address_space       = ["10.0.0.0/16"]
   dns_servers         = ["10.0.0.4", "10.0.0.5"]

  }


subnet77 = {
  
    name                  = "subnet47"
    resource_group_name   = "AK47"
    virtual_network_name  = "vnet47"
    address_prefixes      = ["10.0.1.0/24"]
  }
  
web_nsg = {
  name                = "NSG47"
  location            = "Central India"
  resource_group_name = "AK47"
}


 allow_https = {
   
  name                       = "NSR47"
  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "Tcp"
  source_port_range          = "*"
  destination_port_range     = "443"
  source_address_prefix      = "*"
  destination_address_prefix = "*"


  resource_group_name        = "AK47"   
  network_security_group_name= "NSG47"

 }


# subnet77" {
  
#     subnet_id                 = 
#     network_security_group_id = 

# }