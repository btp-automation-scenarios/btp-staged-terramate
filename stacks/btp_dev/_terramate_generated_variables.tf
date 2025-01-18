// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

variable "globalaccount" {
  description = "Subdomain of the global account"
  type        = string
}
variable "project_name" {
  default     = "Project ABC"
  description = "Name of the project"
  type        = string
}
variable "subaccount_region" {
  default     = "us10"
  description = "Region of the subaccount"
  type        = string
  validation {
    condition = contains([
      "us10",
      "eu10",
    ], var.subaccount_region)
    error_message = "Region must be one of us10 or eu10"
  }
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
variable "beta_enabled" {
  default     = true
  description = "Enable beta features on SAP BTP subaccount"
  type        = bool
}
variable "used_for_production" {
  default     = false
  description = "Indicates if the subaccount is used for production"
  type        = bool
}
variable "project_costcenter" {
  default     = "12345"
  description = "Cost center of the project"
  type        = string
  validation {
    condition     = can(regex("^[0-9]{5}$", var.project_costcenter))
    error_message = "Cost center must be a 5 digit number"
  }
}
variable "cf_landscape_label" {
  default     = ""
  description = "The Cloud Foundry landscape (format example us10-001)."
  type        = string
}
