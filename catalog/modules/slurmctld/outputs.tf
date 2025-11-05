output "app_name" {
  description = "Name of the deployed application"
  value       = juju_application.slurmctld.name
}

output "endpoints" {
  description = "Map of all endpoints"
  value = {
    slurmd      = "slurmd"
    slurmdbd    = "slurmdbd"
    slurmrestd  = "slurmrestd"
    login_node  = "login-node"
    influxdb    = "influxdb"
    oci_runtime = "oci-runtime"
    cos_agent   = "cos-agent"
    mount       = "mount"
  }
}
