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

module "module2" {
 source = "./modules/module-dev2"
 rgname = var.rgname
 location = var.location
 insight2name = var.insight2name 
}
