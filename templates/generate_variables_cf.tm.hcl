# Only generta ethe variables that are not generated via output sharing
generate_hcl "_terramate_generated_var.tf" {
  condition = tm_contains(terramate.stack.tags, "cloudfoundry")
  content {
    variable "project_name" {
      description = "Name of the project"
      type        = string
      default     = "Project ABC"
    }

    variable "cf_space_supporter" {
      description = "The Cloud Foundry space supporter"
      type        = string
      sensitive   = true
      default     = ""
    }

    variable "cf_space_manager" {
      description = "The Cloud Foundry space manager"
      type        = string
      sensitive   = true
      default     = ""
    }

    variable "cf_space_developer" {
      description = "The Cloud Foundry space developer"
      type        = string
      sensitive   = true
      default     = ""
    }

  }
}
