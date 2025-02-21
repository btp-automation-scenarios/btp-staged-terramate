// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
      version = "~> 1.10.0"
    }
  }
  backend "azurerm" {
    key      = "test.btptm.terraform.state"
    use_oidc = true
  }
}
provider "btp" {
  globalaccount = var.globalaccount
}
