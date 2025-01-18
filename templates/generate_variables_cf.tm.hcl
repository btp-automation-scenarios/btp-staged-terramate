# Only generta ethe variables that are not generated via output sharing
generate_hcl "_terramate_generated_var_base.tf" {
  condition = tm_contains(terramate.stack.tags, "cloudfoundry")
  content {
    variable "project_name" {
      description = "Name of the project"
      type        = string
      default     = "Project ABC"
    }

    variable "subaccount_stage" {
      description = "Stage of the subaccount"
      type        = string
      default     = "DEV"
      validation {
        condition     = contains(["DEV", "TEST", "PROD"], var.subaccount_stage)
        error_message = "Stage must be one of DEV, TEST or PROD"
      }
    }

  }
}
