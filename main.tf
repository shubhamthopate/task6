provider "azurerm" {
  features {
 }

}


module "module1" {
 source = "./modules/module-dev1"
 rgname = var.rgname
 location = var.location
 workspacename = var.workspacename
 insightname = var.insightname

}

