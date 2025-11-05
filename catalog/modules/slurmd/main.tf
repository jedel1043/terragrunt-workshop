resource "juju_application" "slurmd" {
  for_each   = var.partitions
  name       = each.key
  model_uuid = var.model_uuid

  charm {
    name    = "slurmd"
    base    = "ubuntu@24.04"
    channel = var.channel
  }

  config      = each.value.config
  constraints = each.value.constraints
  units       = each.value.units
}
