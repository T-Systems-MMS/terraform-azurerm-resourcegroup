module "resource_group" {
  source = "../terraform-resourcegroup"
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
