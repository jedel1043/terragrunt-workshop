// https://registry.terraform.io/providers/juju/juju/latest/docs/resources/application
resource "juju_application" "slurmctld" {
  name       = var.controller.app_name
  model_uuid = juju_model.this.uuid

  charm {
    name    = "slurmctld"
    base    = "ubuntu@24.04"
    channel = var.channel
  }

  config      = var.controller.config
  constraints = var.controller.constraints
  units       = 1
}
