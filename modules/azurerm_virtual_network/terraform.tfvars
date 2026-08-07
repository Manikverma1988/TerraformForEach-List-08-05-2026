vnets = {
  vnet1 = {
    name                = "manik-vnet"
    location            = "Central India"
    resource_group_name = "RG-piyush"
    address_space       = ["10.0.0.0/16"]
  }

  vnet2 = {
    name                = "pramila-vnet"
    location            = "Central India"
    resource_group_name = "RG-pranjal"
    address_space       = ["10.124.0.0/16"]
  }
}