variable "channel" {
  description = "Channel to deploy Slurmd from."
  type        = string
  default     = "latest/edge"
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
