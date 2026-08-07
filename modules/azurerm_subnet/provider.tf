terraform {
required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-piyush"
    storage_account_name = "piyush0storage"
    container_name       = "pranjalcontainer"
    key                  = "subnet.tfstate"
  }
}

provider "azurerm" {
  features { }
  
}