module "vn2" {
  source = "../vn-subnet-module"

  resourceName = "rgMyResources"
  location = "West Europe"
tags = {
    "env" : "dev"
    }
vitualNetworkName = "myVirtualNetwork2"
subnet1 = "subnet3"
subnet2 = "subnet4"
}