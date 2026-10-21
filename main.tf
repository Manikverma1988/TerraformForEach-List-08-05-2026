# Terraform count is used to create multiple instances of the same resource. The count.index value starts from 0 and identifies each instance.

resource "azurerm_resource_group" "example" {
  count    = length(var.rg_names)
  name     =  var.rg_names[count.index]
  location = var.location
}