moved {
  from = juju_model.this
  to   = module.main.juju_model.this
}

moved {
  from = module.slurmctld.juju_application.slurmctld
  to   = module.main.module.slurmctld.juju_application.slurmctld
}

moved {
  from = module.slurmd.juju_application.slurmd
  to   = module.main.module.slurmd.juju_application.slurmd
}

moved {
  from = juju_integration.slurmd-to-slurmctld
  to   = module.main.juju_integration.slurmd-to-slurmctld
}
