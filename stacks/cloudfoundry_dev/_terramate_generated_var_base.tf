// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

variable "project_name" {
  default     = "Project ABC"
  description = "Name of the project"
  type        = string
}
variable "subaccount_stage" {
  default     = "DEV"
  description = "Stage of the subaccount"
  type        = string
  validation {
    condition = contains([
      "DEV",
      "TEST",
      "PROD",
    ], var.subaccount_stage)
    error_message = "Stage must be one of DEV, TEST or PROD"
  }
}
