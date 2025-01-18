// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
      version = "~> 1.9.0"
    }
  }
  backend "azurerm" {
    key = "prod.btptm.terraform.state.btptm.terraform.state"
  }
}
provider "btp" {
  globalaccount = var.globalaccount
}
