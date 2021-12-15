variable "resource_name" {
  type        = set(string)
  description = "Azure ResourceGroup"
}
variable "location" {
  type        = string
  description = "location where the resource should be created"
}
variable "tags" {
  type        = any
  default     = {}
  description = "mapping of tags to assign, default settings are defined within locals and merged with var settings"
}

locals {
  default = {
    tags = {}
  }

  # merge default and custom variables
  tags = merge(local.default.tags, var.tags)
}
