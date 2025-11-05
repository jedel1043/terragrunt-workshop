// https://registry.terraform.io/providers/juju/juju/latest/docs/resources/model
resource "juju_model" "this" {
  name = var.model_name

  config = var.model_config
}
