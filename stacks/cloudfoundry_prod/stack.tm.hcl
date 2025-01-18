stack {
  name        = "cloudfoundry-prod"
  description = "CF for BTP setup (PROD)"
  tags        = ["cloudfoundry", "prod"]
  id          = "a40c5563-5219-4a9d-88e5-be737b57c47f"
  after       = ["tag:btp:prod"]
}
