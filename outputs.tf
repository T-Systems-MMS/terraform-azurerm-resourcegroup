/*
output "resource_group_id" {
  description = "Resource group ID"
  value = {
    for resource_group in azurerm_resource_group.resource_group:
    resource_group.name => resource_group.id
  }
}
*/
