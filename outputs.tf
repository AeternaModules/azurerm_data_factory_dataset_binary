output "data_factory_dataset_binaries_id" {
  description = "Map of id values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_dataset_binaries_additional_properties" {
  description = "Map of additional_properties values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_dataset_binaries_annotations" {
  description = "Map of annotations values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_dataset_binaries_azure_blob_storage_location" {
  description = "Map of azure_blob_storage_location values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.azure_blob_storage_location if v.azure_blob_storage_location != null && length(v.azure_blob_storage_location) > 0 }
}
output "data_factory_dataset_binaries_compression" {
  description = "Map of compression values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.compression if v.compression != null && length(v.compression) > 0 }
}
output "data_factory_dataset_binaries_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_dataset_binaries_description" {
  description = "Map of description values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_dataset_binaries_folder" {
  description = "Map of folder values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.folder if v.folder != null && length(v.folder) > 0 }
}
output "data_factory_dataset_binaries_http_server_location" {
  description = "Map of http_server_location values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.http_server_location if v.http_server_location != null && length(v.http_server_location) > 0 }
}
output "data_factory_dataset_binaries_linked_service_name" {
  description = "Map of linked_service_name values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.linked_service_name if v.linked_service_name != null && length(v.linked_service_name) > 0 }
}
output "data_factory_dataset_binaries_name" {
  description = "Map of name values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_dataset_binaries_parameters" {
  description = "Map of parameters values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "data_factory_dataset_binaries_sftp_server_location" {
  description = "Map of sftp_server_location values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.sftp_server_location if v.sftp_server_location != null && length(v.sftp_server_location) > 0 }
}

