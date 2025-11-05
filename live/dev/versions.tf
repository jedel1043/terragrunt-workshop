terraform {
  required_version = ">= 1.10"
  required_providers {
    juju = {
      version = "~> 1.0.0"
      source  = "juju/juju"
    }
  }
}
