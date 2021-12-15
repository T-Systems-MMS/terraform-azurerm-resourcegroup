/**
 * # resource_group
 *
 * This module manages Azure ResourceGroups.
 *
*/
resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource_name

  name     = each.key
  location = var.location

  tags = {
    for tag in keys(local.tags) :
    tag => local.tags[tag]
  }

  lifecycle {
    prevent_destroy = true
  }
}
