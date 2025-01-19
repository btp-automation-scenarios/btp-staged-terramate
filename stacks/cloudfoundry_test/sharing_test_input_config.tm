input "cf_api_url" {
  backend       = "default"
  from_stack_id = "10dfa7d8-2fae-437a-9818-21978f776b73"
  value         = outputs.cf_api_url.value
  mock          = "https://api.cf.us21.hana.ondemand.com"
}

input "cf_org_id" {
  backend       = "default"
  from_stack_id = "10dfa7d8-2fae-437a-9818-21978f776b73"
  value         = outputs.cf_org_id.value
  mock          = "917f57a1-8fee-43b3-b3a8-4bb4ce8259ab"
}

input "subaccount_url" {
  backend       = "default"
  from_stack_id = "10dfa7d8-2fae-437a-9818-21978f776b73"
  value         = outputs.subaccount_url.value
  mock          = "https://emea.cockpit.btp.cloud.sap/cockpit/#globalaccount/917f57a1-8fee-43b3-b3a8-4bb4ce8259ab/subaccount/917f57a1-8fee-43b3-b3a8-4bb4ce8259ab"
}
