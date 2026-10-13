
# Use of type object only it helfull for multiple type of data type and

variable "rg88" {
  type = object({
    name     = string
    location = string
  })
}
  


variable "vnet99" {
  type = object({
    name = string
    location = string
    resource_group_name = string
    address_space = list(string)
    dns_servers = list(string)
  })
  
}

variable "subnet77" {
  type = object({
    name                  = string
    resource_group_name   = string
    virtual_network_name  = string
    address_prefixes      = list(string)
  })
  
}

variable "web_nsg" {
  type = object({
    name                 = string 
    location             = string
    resource_group_name  = string
  })
  
}

variable "allow_https" {
  type = object({
    name                      = string
    priority                  = number
    direction                 = string
    access                    = string
    protocol                  = string
    source_port_range         = string
    destination_port_range    = string
    source_address_prefix     = string
    destination_address_prefix= string

    resource_group_name         = string
    network_security_group_name = string

  })
  
}

# variable "subnet77" {
#   type = object({
#     subnet_id                 = string
#     network_security_group_id = string


#   })
  
# }