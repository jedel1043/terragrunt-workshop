variable "app_name" {
  description = "Name to give the deployed application"
  type        = string
  default     = "slurmctld"
}

variable "channel" {
  description = "Channel to deploy Slurmctld from."
  type        = string
  default     = "latest/edge"
}

variable "config" {
  description = "Map for config options"
  type        = map(string)
  default     = {}
}

variable "constraints" {
  description = "String listing constraints for this application"
  type        = string
  default     = "arch=<arch>"
}

variable "units" {
  description = "Unit count/scale"
  type        = number
  default     = 1
}
