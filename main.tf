provider "azurerm" {
  features {
 }

}


module "module1" {
 source = "./modules/module-dev1"

}

module "module2" {
 source = "./modules/module-dev2"

}