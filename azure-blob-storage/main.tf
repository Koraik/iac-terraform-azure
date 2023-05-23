resource "azurerm_resource_group" "storage_for_blob" {
  name     = var.resource_group_name
  location = var.resource_location
}

resource "azurerm_storage_account" "storage_for_blob" {
  name                     = var.storage_name_account
  
  resource_group_name      = azurerm_resource_group.storage_for_blobe.name
  location                 = azurerm_resource_group.storage_for_blob.location
  
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_storage_container" "container_for_blob" {
  name                  = var.storage_container_name
  
  storage_account_name  = azurerm_storage_account.storage_for_blob.name
  
  container_access_type = var.storage_container_access_type
}

resource "azurerm_storage_blob" "blob" {
  name                   = var.storage_blob_name
  
  storage_account_name   = azurerm_storage_account.storage_for_blob.name
  storage_container_name = azurerm_storage_container.container_for_blob.name
  
  type                   = "Block"
  
  source_content         = var.storage_blob_source_content
}
