terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
  subscription_id   = "855b3c2f-f781-4828-a396-d5749d577e21"
  tenant_id       = "ca84daf0-3cd3-4718-bd17-bd6bdb5f1cf9"
  client_id       = "8a30b0c8-d1f1-4944-b0d4-68d2261a6766"
  client_secret   = "UcB8Q~Rp3KOTJZfgaP7dQVgkLRsckAYQakjKVceM"
}
