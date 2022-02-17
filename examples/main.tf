module "resource_group" {
  source = "registry.terraform.io/T-Systems-MMS/resourcegroup/azurerm"
  resource_group = {
    mgmt = {
      name     = "service-mgmt-rg"
      location = "westeurope"
      tags = {
        service = "service_name"
      }
    }
    live = {
      name     = "service-live-rg"
      location = "westeurope"
      tags = {
        service = "service_name"
      }
    }
  }
}
