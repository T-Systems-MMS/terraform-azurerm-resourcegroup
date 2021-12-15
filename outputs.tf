output "resource_group" {
  description = "azurerm_resource_group results"
  value = {
    for resource_group in  keys(azurerm_resource_group.resource_group):
    resource_group => {
      name = azurerm_resource_group.resource_group[resource_group].name
      id   = azurerm_resource_group.resource_group[resource_group].id
    }
  }
}
