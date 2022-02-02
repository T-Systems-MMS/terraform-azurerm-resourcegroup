variable "resource_group" {
  type        = any
  default     = {}
  description = "mapping of tags to assign, default settings are defined within locals and merged with var settings"
}

locals {
  default = {
    # resource definition
    resource_group = {
      name = ""
      tags = {}
    }
  }

  # compare and merge custom and default values
  # merge all custom and default values
  resource_group = {
    for resource_group in keys(var.resource_group) :
    resource_group => merge(local.default.resource_group, var.resource_group[resource_group])
  }
}
