resource "juju_application" "slurmctld" {
  name       = var.app_name
  model_uuid = var.model_uuid

  charm {
    name    = "slurmctld"
    base    = "ubuntu@24.04"
    channel = var.channel
  }

  config      = var.config
  constraints = var.constraints
  units       = var.units
}
