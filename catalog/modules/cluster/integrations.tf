// https://registry.terraform.io/providers/juju/juju/latest/docs/resources/integration
resource "juju_integration" "slurmd-to-slurmctld" {
  for_each   = module.slurmd.partitions
  model_uuid = juju_model.this.uuid

  application {
    name     = each.value.app_name
    endpoint = each.value.endpoints.slurmctld
  }

  application {
    name     = module.slurmctld.app_name
    endpoint = module.slurmctld.endpoints.slurmd
  }
}
