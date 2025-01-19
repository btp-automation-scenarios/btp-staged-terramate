// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

output "cf_space_url" {
  description = "The Cloud Foundry space URL"
  value       = "${var.subaccount_url}/org/${var.cf_org_id}/space/${cloudfoundry_space.project_space.id}/applications"
}
