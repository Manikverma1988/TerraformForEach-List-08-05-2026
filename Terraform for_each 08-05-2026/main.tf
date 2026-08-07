variable "the_verma_family" {}

resource "azurerm_resource_group" "rg1" {
for_each = toset (var.the_verma_family)
name = each.key
   location = "westus"
}