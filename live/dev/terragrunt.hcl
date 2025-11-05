include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../catalog/modules//cluster"
}

inputs = {
  model_name = "development"

  partitions = {
    "compute" : {
      units = 2
    }
  }

  model_config = {
    development                 = true
    logging-config              = "<root>=WARNING;unit=DEBUG"
    update-status-hook-interval = "1m"
  }
}
