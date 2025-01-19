generate_hcl "_terramate_generated_main.tf" {
  condition = tm_contains(terramate.stack.tags, "cloudfoundry")
  content {

    resource "cloudfoundry_space" "project_space" {
      name = lower(replace("${var.subaccount_stage}-${var.project_name}", " ", "-"))
      org  = var.cf_org_id
    }

    resource "cloudfoundry_space_role" "space_manager" {
      count    = var.subaccount_stage == "PROD" ? 0 : 1
      username = var.cf_space_manager
      type     = "space_manager"
      space    = cloudfoundry_space.project_space.id
      origin   = "sap.ids"
    }

    resource "cloudfoundry_space_role" "space_developer" {
      count    = var.subaccount_stage == "PROD" ? 0 : 1
      username = var.cf_space_developer
      type     = "space_developer"
      space    = cloudfoundry_space.project_space.id
      origin   = "sap.ids"
    }

    resource "cloudfoundry_space_role" "space_supporter" {
      count    = var.subaccount_stage == "PROD" ? 1 : 0
      username = var.cf_space_supporter
      type     = "space_supporter"
      space    = cloudfoundry_space.project_space.id
      origin   = "sap.ids"
    }

  }
}
