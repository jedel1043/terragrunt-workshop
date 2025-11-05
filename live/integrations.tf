// https://registry.terraform.io/providers/juju/juju/latest/docs/resources/integration
resource "juju_integration" "slurmd-to-slurmctld" {
  for_each   = juju_application.slurmd
  model_uuid = juju_model.this.uuid

  application {
    name     = each.value.name
    endpoint = "slurmctld"
  }

  application {
    name     = juju_application.slurmctld.name
    endpoint = "slurmd"
  }
}
