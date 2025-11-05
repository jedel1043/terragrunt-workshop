module "slurmctld" {
  source      = "../slurmctld"
  model_uuid  = juju_model.this.uuid
  app_name    = var.controller.app_name
  config      = var.controller.config
  constraints = var.controller.constraints
}

module "slurmd" {
  source     = "../slurmd"
  model_uuid = juju_model.this.uuid
  partitions = var.partitions
}
