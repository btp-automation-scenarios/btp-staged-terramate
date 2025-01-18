stack {
  name        = "cloudfoundry-test"
  description = "CF for BTP setup (TEST)"
  tags        = ["cloudfoundry", "test"]
  id          = "cf181e8b-f000-4f72-aa26-64734a3b592b"
  after       = ["tag:btp:test"]
}
