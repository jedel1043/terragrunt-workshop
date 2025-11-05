moved {
  from = juju_application.slurmctld
  to   = module.slurmctld.juju_application.slurmctld
}

moved {
  from = juju_application.slurmd
  to   = module.slurmd.juju_application.slurmd
}
