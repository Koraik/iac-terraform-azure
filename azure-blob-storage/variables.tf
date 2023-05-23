variable "resource_group_name" {
  
  type    = string
  default = "resource-group-for-blob"
}

variable "resource_location" {
  type    = string
  default = "west europe"
}

variable "storage_name_account" {
  type    = string
  default = "blob_storage_account"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}

variable "storage_container_name" {
  type    = string
  default = "container_for_blob"
}

variable "storage_container_access_type" {
  type    = string
  default = "private"
}

variable "storage_blob_name" {
  type    = string
  default = "example-blob"
}

variable "storage_blob_source_content" {
  type    = string
  default = "Hi this is blob, this is my content"
}
