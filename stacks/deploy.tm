script "deploy" {
  job {
    name        = "Terraform Deployment"
    description = "Init, validate, plan, and apply Terraform changes."
    commands = [
      ["terraform", "init"],
      ["terraform", "validate"],
      ["terraform", "plan", "-out", "out.tfplan", "-lock=false", {
        enable_sharing = true
        mock_on_fail   = true
      }],
      ["terraform", "apply", "-input=false", "-auto-approve", "-lock-timeout=5m", "out.tfplan", {
        enable_sharing = true
        mock_on_fail   = true
      }],
    ]
  }
}
