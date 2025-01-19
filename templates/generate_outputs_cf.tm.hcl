generate_hcl "_terramate_generated_outputs.tf" {
  condition = tm_contains(terramate.stack.tags, "cloudfoundry")
  content {

    output "cf_space_url" {
      value       = "${var.subaccount_url}/org/${var.cf_org_id}/space/${cloudfoundry_space.project_space.id}/applications"
      description = "The Cloud Foundry space URL"
    }

  }
}
