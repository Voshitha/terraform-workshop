module "vn1" {
  source = "../vn-subnet-module"

  resourceName = "rgMyResources"
  location = "West Europe"
tags = {
    "env" : "dev"
    }
vitualNetworkName = "myVirtualNetwork1"
subnet1 = "subnet1"
subnet2 = "subnet2"
}