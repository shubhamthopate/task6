provider "azurerm" {
  features {
 }

}

resource "azurerm_resource_group" "example" {
  name     = "sta-dev"
  location =  "eastus"
}