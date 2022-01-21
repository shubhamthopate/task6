resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_application_insights" "example" {
  name                = var.insight2name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.example.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.example.app_id
}