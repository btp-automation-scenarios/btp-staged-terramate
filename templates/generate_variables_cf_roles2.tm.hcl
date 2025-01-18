# Only generta ethe variables that are not generated via output sharing
generate_hcl "_terramate_generated_var_roles2.tf" {
  condition = tm_alltrue([tm_contains(terramate.stack.tags, "cloudfoundry"), tm_contains(terramate.stack.tags, "prod")])
  content {
    variable "cf_space_supporter" {
      description = "The Cloud Foundry space supporter"
      type        = string
      sensitive   = true
    }
  }
}
