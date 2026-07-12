output "data_factory_dataset_binaries_id" {
  description = "Map of id values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.id }
}
output "data_factory_dataset_binaries_additional_properties" {
  description = "Map of additional_properties values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.additional_properties }
}
output "data_factory_dataset_binaries_annotations" {
  description = "Map of annotations values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.annotations }
}
output "data_factory_dataset_binaries_azure_blob_storage_location" {
  description = "Map of azure_blob_storage_location values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.azure_blob_storage_location }
}
output "data_factory_dataset_binaries_compression" {
  description = "Map of compression values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.compression }
}
output "data_factory_dataset_binaries_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.data_factory_id }
}
output "data_factory_dataset_binaries_description" {
  description = "Map of description values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.description }
}
output "data_factory_dataset_binaries_folder" {
  description = "Map of folder values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.folder }
}
output "data_factory_dataset_binaries_http_server_location" {
  description = "Map of http_server_location values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.http_server_location }
}
output "data_factory_dataset_binaries_linked_service_name" {
  description = "Map of linked_service_name values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.linked_service_name }
}
output "data_factory_dataset_binaries_name" {
  description = "Map of name values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.name }
}
output "data_factory_dataset_binaries_parameters" {
  description = "Map of parameters values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.parameters }
}
output "data_factory_dataset_binaries_sftp_server_location" {
  description = "Map of sftp_server_location values across all data_factory_dataset_binaries, keyed the same as var.data_factory_dataset_binaries"
  value       = { for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : k => v.sftp_server_location }
}

