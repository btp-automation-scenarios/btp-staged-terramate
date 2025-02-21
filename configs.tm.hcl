// Configure default default Terraform providers
globals "terraform" "providers" "btp" {
  version     = "~> 1.10.0"
  version_dev = "~> 1.10.0"
}

globals "terraform" "providers" "cloudfoundry" {
  version     = "~> 1.3.0"
  version_dev = "~> 1.3.0"
}
