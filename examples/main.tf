module "resource-groups" {
  source   = "../terraform-resourcegroup"
  location = "westeurope"
  resource_name = [
    service-mgmt-rg,
    service-mgmt-rg,
    service-mgmt-live-rg,
    service-mgmt-test-rg,
  ]
  tags = {
    service = "service_name"
  }
}
