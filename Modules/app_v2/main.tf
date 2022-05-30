resource "azurerm_resource_group" "test" {
  name     = "example-resources-arm-v2"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "test" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "test" {
  name                = "example-app-service-bat-dev"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  app_service_plan_id = azurerm_app_service_plan.test.id

  app_settings = {
  }

}
