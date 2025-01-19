// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "cloudfoundry_space" "project_space" {
  name = lower(replace("${var.subaccount_stage}-${var.project_name}", " ", "-"))
  org  = var.cf_org_id
}
resource "cloudfoundry_space_role" "space_manager" {
  count    = var.subaccount_stage == "PROD" ? 0 : 1
  origin   = "sap.ids"
  space    = cloudfoundry_space.project_space.id
  type     = "space_manager"
  username = var.cf_space_manager
}
resource "cloudfoundry_space_role" "space_developer" {
  count    = var.subaccount_stage == "PROD" ? 0 : 1
  origin   = "sap.ids"
  space    = cloudfoundry_space.project_space.id
  type     = "space_developer"
  username = var.cf_space_developer
}
resource "cloudfoundry_space_role" "space_supporter" {
  count    = var.subaccount_stage == "PROD" ? 1 : 0
  origin   = "sap.ids"
  space    = cloudfoundry_space.project_space.id
  type     = "space_supporter"
  username = var.cf_space_supporter
}
