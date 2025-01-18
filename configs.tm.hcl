// Configure default default Terraform providers
globals "terraform" "providers" "btp" {
  version     = "~> 1.9.0"
  version_dev = "~> 1.9.0"
}

globals "terraform" "providers" "cloudfoundry" {
  version     = "~> 1.2.0"
  version_dev = "~> 1.2.0"
}
