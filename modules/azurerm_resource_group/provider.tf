terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "RG-manikverma"
    storage_account_name = "piyush0storage"
    container_name = "pranjalcontainer"
    key = "rg.tfstate"
}
}

provider "azurerm" {
  features { }
}