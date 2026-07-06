output "data_factory_dataset_binaries" {
  description = "All data_factory_dataset_binary resources"
  value       = azurerm_data_factory_dataset_binary.data_factory_dataset_binaries
}
output "data_factory_dataset_binaries_additional_properties" {
  description = "List of additional_properties values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.additional_properties]
}
output "data_factory_dataset_binaries_annotations" {
  description = "List of annotations values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.annotations]
}
output "data_factory_dataset_binaries_azure_blob_storage_location" {
  description = "List of azure_blob_storage_location values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.azure_blob_storage_location]
}
output "data_factory_dataset_binaries_compression" {
  description = "List of compression values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.compression]
}
output "data_factory_dataset_binaries_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.data_factory_id]
}
output "data_factory_dataset_binaries_description" {
  description = "List of description values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.description]
}
output "data_factory_dataset_binaries_folder" {
  description = "List of folder values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.folder]
}
output "data_factory_dataset_binaries_http_server_location" {
  description = "List of http_server_location values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.http_server_location]
}
output "data_factory_dataset_binaries_linked_service_name" {
  description = "List of linked_service_name values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.linked_service_name]
}
output "data_factory_dataset_binaries_name" {
  description = "List of name values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.name]
}
output "data_factory_dataset_binaries_parameters" {
  description = "List of parameters values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.parameters]
}
output "data_factory_dataset_binaries_sftp_server_location" {
  description = "List of sftp_server_location values across all data_factory_dataset_binaries"
  value       = [for k, v in azurerm_data_factory_dataset_binary.data_factory_dataset_binaries : v.sftp_server_location]
}

