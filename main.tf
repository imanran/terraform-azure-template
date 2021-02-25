terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = random_pet.unique.id
  location = "westus2"
}

resource "random_pet" "unique" {
  prefix    = "iman-azdo-demo"
  length    = 2
  separator = "-"
}
