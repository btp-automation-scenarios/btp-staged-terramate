script "teardown" {
  job {
    name        = "Terraform Teardown"
    description = "Destroy Terraform setup."

    commands = [
      ["terraform", "destroy", "-input=false", "-auto-approve", "-lock-timeout=5m", {
        enable_sharing = true
        mock_on_fail   = true
      }],
    ]
  }
}
