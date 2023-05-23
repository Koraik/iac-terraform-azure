variable "resource_group_name" {
  type    = string
  default = "my-resource-group"
}

variable "resource_location" {
  type    = string
  default = "west europe"
}

variable "storage_name_account" {
  type    = string
  default = "my-storage-account"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}

variable "app_service_plan_name" {
  type    = string
  
  default = "my-app-service-plan"
}

variable "app_service_plan_tier" {
  
  type    = string
  default = "basic"
}

variable "app_service_plan_size" {
  type    = string
  default = "B1"
}

variable "function_app_name" {
  type    = string
  default = "my-function-app"
  
}

variable "function_app_runtime_stack" {
  type    = string
  default = "node"
}

variable "function_app_version" {
  type    = string
  default = "~3"
}

variable "function_app_settings" {
  type    = map(string)
  default = {
    "setting_one" = "value_one"
    "setting_two" = "value_two"
  }
}

variable "function_app_connection_string" {
  type    = string
  default = "connection-string"
}

variable "function_app_disable_app_insights" {
  type    = bool
  default = false
}

variable "function_app_https_only" {
  type    = bool
  default = true
}

variable "function_app_functions_version" {
  type    = string
  default = "3"
}

variable "function_app_remote_debugging_enabled" {
  type    = bool
  default = false
}

variable "function_app_remote_debugging_version" {
  type    = string
  default = "VS2019"
}

variable "function_app_use_32_bit_worker_process" {
  type    = bool
  default = true
}

variable "function_name" {
  type    = string
  default = "my-function"
}

variable "function_storage_container_name" {
  type    = string
  default = "my-container"
}

variable "function_runtime" {
  type    = string
  default = "node"
}

variable "function_filename" {
  type    = string
  default = "function.js"
}

variable "function_app_settings" {
  type    = map(string)
  default = {
    "setting1" = "value1"
    "setting2" = "value2"
  }
}

variable "function_environment_variables" {
  type    = map(string)
  default = {
    "variable_one" = "value_one"
    "variable_two" = "value_two"
  }
}
