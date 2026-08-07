# hardcoded
resource "azurerm_resource_group" "mangoe" {
  name     = "rg-mango"
  location = "West Europe"
}
# Variable
variable "rg_name" {}
variable "rg_location"{}

resource "azurerm_resource_group" "apple"{
  name = var.rg_name
  location = var.rg_location
}
# RG list (string) foreach

variable "rg_list" {}
resource "azurerm_resource_group" "apple"{
for_each =toset(var.rg_list)
name = each.value
 location = "central india"
}

# RG Map + foreach
variable "rg_map" {}
resource "azurerm_resource_group" "apple"{
for_each = var.rg_map
name = each.key
 location = each.value
}



  






