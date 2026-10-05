terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "d253a3f7-091b-4633-bb77-1f89827da37e"
features {}
}
