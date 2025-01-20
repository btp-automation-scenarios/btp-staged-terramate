// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

variable "project_name" {
  default     = "Project ABC"
  description = "Name of the project"
  type        = string
}
variable "cf_space_supporter" {
  default     = ""
  description = "The Cloud Foundry space supporter"
  sensitive   = true
  type        = string
}
variable "cf_space_manager" {
  default     = ""
  description = "The Cloud Foundry space manager"
  sensitive   = true
  type        = string
}
variable "cf_space_developer" {
  default     = ""
  description = "The Cloud Foundry space developer"
  sensitive   = true
  type        = string
}
