resource "azurerm_resource_group" "example" {
    for_each = toset(["rg-manik", "rg-piyush"])

name = each.value
  location = var.location
}