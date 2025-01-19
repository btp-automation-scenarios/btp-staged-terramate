output "cf_api_url" {
  backend     = "default"
  value       = jsondecode(btp_subaccount_environment_instance.cloudfoundry.labels)["API Endpoint"]
  description = "The Cloud Foundry API URL"
  sensitive   = false
}

output "cf_org_id" {
  backend     = "default"
  value       = jsondecode(btp_subaccount_environment_instance.cloudfoundry.labels)["Org ID"]
  description = "The Cloud Foundry organization ID"
  sensitive   = false
}

output "subaccount_url" {
  backend     = "default"
  value       = "https://emea.cockpit.btp.cloud.sap/cockpit/#globalaccount/${data.btp_globalaccount.this.id}/subaccount/${btp_subaccount.project_subaccount.id}"
  description = "The SAP BTP subaccount URL"
  sensitive   = false
}
