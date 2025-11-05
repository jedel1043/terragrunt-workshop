output "partitions" {
  description = "Information about the Slurm compute partitions"
  value = {
    for key, value in juju_application.slurmd : key => {
      app_name = value.name
      endpoints = {
        slurmctld = "slurmctld"
        cos_agent = "cos-agent"
      }
    }
  }
}
