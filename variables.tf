# resource definition
variable "resource_name" {
  type    = set(string)
  default = ["rg"]
}
variable "location" {
  type = string
}
variable "tags" {
  type    = any
  default = {}
}

locals {
  # type constraints
  # default values
  default = {
    # resource definition
    tags = {}
  }

  # merge custom and default values
  tags = merge(local.default.tags, var.tags)
}
