generate_hcl "_terramate_generated_outputs.tf" {
  condition = tm_contains(terramate.stack.tags, "btp")
  content {

    output "cf_landscape_label" {
      value       = btp_subaccount_environment_instance.cloudfoundry.landscape_label
      description = "The Cloud Foundry landscape label"
    }

  }
}
