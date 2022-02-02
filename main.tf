/**
 * # resource_group
 *
 * This module manages Azure ResourceGroups.
 *
*/
resource "azurerm_resource_group" "resource_group" {
  for_each = var.resource_group

  name     = local.resource_group[each.key].name == "" ? each.key : local.resource_group[each.key].name
  location = local.resource_group[each.key].location

  tags = local.resource_group[each.key].tags

  lifecycle {
    prevent_destroy = true
  }
}
