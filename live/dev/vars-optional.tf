variable "channel" {
  description = "Channel to deploy the Slurm charms from."
  type        = string
  default     = "latest/edge"
}

variable "model_config" {
  description = "Model configuration"
  type        = map(string)
  default     = null
}

variable "controller" {
  description = "Configuration options for the Slurm controller node."
  type = object({
    app_name    = optional(string),
    config      = optional(map(string)),
    constraints = optional(string)
  })
  default = {
    app_name = "controller"
  }
}

variable "partitions" {
  description = "Map of Slurm compute partitions to deploy."
  type = map(
    object({
      units       = optional(number),
      config      = optional(map(string)),
      constraints = optional(string)
    })
  )
  default = {
    "compute" : {
      units = 1
    }
  }
}
