module "main" {
  source = "../../catalog/modules/cluster"

  model_name = var.model_name

  model_config = var.model_config

  controller = var.controller

  partitions = var.partitions
}
