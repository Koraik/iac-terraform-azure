resource "azurerm_resource_group" "Koraik" {
  name     = var.resource_group_name
  location = var.resource_location
}

resource "azurerm_storage_account" "Koraik" {
  name                     = var.storage_name_account
  
  resource_group_name      = azurerm_resource_group.Koraik.name
  location                 = azurerm_resource_group.Koraik.location
  
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_app_service_plan" "Koraik" {
  name                = var.app_service_plan_name
  
  location            = azurerm_resource_group.Koraik.location
  resource_group_name = azurerm_resource_group.Koraik.name
  
  
  sku {
    tier = var.app_service_plan_tier
    size = var.app_service_plan_size
  }
}


resource "azurerm_linux_function_app" "Koraik" {
  name                      = var.function_app_name
  location                  = azurerm_resource_group.Koraik.location
  
  resource_group_name       = azurerm_resource_group.Koraik.name
  app_service_plan_id       = azurerm_app_service_plan.Koraik.id
  storage_account_name      = azurerm_storage_account.Koraik.name
  
  os_type                   = "Linux"
  
  runtime_stack             = var.function_app_runtime_stack
  version                   = var.function_app_version
  app_settings              = var.function_app_settings
  connection_string         = var.function_app_connection_string
  disable_app_insights      = var.function_app_disable_app_insights
  https_only                = var.function_app_https_only
  functions_version         = var.function_app_functions_version
  remote_debugging_enabled  = var.function_app_remote_debugging_enabled
  remote_debugging_version  = var.function_app_remote_debugging_version
  use_32_bit_worker_process = var.function_app_use_32_bit_worker_process
}

resource "azurerm_function_app_function" "Koraik" {
  name                       = var.function_name
  id                         = var.id_function_name
  
  resource_group_name        = azurerm_resource_group.Koraik.name
  function_app_name          = azurerm_linux_function_app.Koraik.name
  function_app_id            = azurerm_linux_function_app.Koraik.id
  storage_account_connection = azurerm_storage_account.Koraik.name
  storage_account_name       = azurerm_storage_account.Koraik.name
  
  storage_container_name     = var.function_storage_container_name
  runtime                    = var.function_runtime
  filename                   = var.function_filename
  app_settings               = var.function_app_settings
  environment_variables      = var.function_environment_variables
}
