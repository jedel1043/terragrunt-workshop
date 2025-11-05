include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../catalog/modules//cluster"
}

inputs = {
  model_name = "production"

  partitions = {
    "compute" : {
      units = 1
    }
    "gpu" : {
      units = 1
    }
  }

  model_config = {
    development                 = false
    logging-config              = "<root>=INFO"
    update-status-hook-interval = "15m"
  }
}
