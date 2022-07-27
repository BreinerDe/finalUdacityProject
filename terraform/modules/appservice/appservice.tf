resource "azurerm_app_service_plan" "test" {
  name                = "dennisTerraformUdacityFinalProjectPlan"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "test" {
  name                = "dennisTerraformUdacityFinalProject"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = azurerm_app_service_plan.test.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = 0
  }
}