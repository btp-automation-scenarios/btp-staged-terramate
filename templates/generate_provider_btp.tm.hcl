generate_hcl "_terramate_generated_provider.tf" {
  condition = tm_contains(terramate.stack.tags, "btp")
  content {
    terraform {
      required_providers {
        btp = {
          source  = "SAP/btp"
          version = tm_ternary(tm_contains(terramate.stack.tags, "dev"), global.terraform.providers.btp.version_dev, global.terraform.providers.btp.version)
        }
      }
      backend "azurerm" {
        key      = "${terramate.stack.tags[1]}.btptm.terraform.state"
        use_oidc = true
      }
    }
    provider "btp" {
      globalaccount = var.globalaccount
    }
  }
}
