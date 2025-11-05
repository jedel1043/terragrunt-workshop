moved {
  from = module.main.juju_model.this
  to   = juju_model.this
}

moved {
  from = module.main.module.slurmctld.juju_application.slurmctld
  to   = module.slurmctld.juju_application.slurmctld
}

moved {
  from = module.main.module.slurmd.juju_application.slurmd
  to   = module.slurmd.juju_application.slurmd
}

moved {
  from = module.main.juju_integration.slurmd-to-slurmctld
  to   = juju_integration.slurmd-to-slurmctld
}
