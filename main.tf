terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.34.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "3.13.0"
    }
    google = {
      source = "hashicorp/google"
      version = "3.46.0"
    }

  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "s5ce-rgg"
  location = "westus2"
  tags = {
  "Resource Group" = "s5ce-rgg"
  "Location" = "West US 2"
  "Location Code" = "westus2"
  }
}
