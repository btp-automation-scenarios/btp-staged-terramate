# Only generta ethe variables that are not generated via output sharing
generate_hcl "_terramate_generated_var_roles1.tf" {
  condition = tm_alltrue([tm_contains(terramate.stack.tags, "cloudfoundry"), tm_anytrue([tm_contains(terramate.stack.tags, "dev"), tm_contains(terramate.stack.tags, "test")])])
  content {
    variable "cf_space_manager" {
      description = "The Cloud Foundry space manager"
      type        = string
      sensitive   = true
    }

    variable "cf_space_developer" {
      description = "The Cloud Foundry space developer"
      type        = string
      sensitive   = true
    }

  }
}
