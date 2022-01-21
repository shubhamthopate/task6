data "azurerm_resource_group" "example" {
  name     = var.rgnamedev
 
}

resource "azurerm_application_insights" "example" {
  name                = var.insight2dev
  location            = var.locationdev
  resource_group_name = var.rgnamedev
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.example.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.example.app_id
}