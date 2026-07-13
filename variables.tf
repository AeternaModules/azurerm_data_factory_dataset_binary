variable "data_factory_dataset_binaries" {
  description = <<EOT
Map of data_factory_dataset_binaries, attributes below
Required:
    - data_factory_id
    - linked_service_name
    - name
Optional:
    - additional_properties
    - annotations
    - description
    - folder
    - parameters
    - azure_blob_storage_location (block):
        - container (required)
        - dynamic_container_enabled (optional)
        - dynamic_filename_enabled (optional)
        - dynamic_path_enabled (optional)
        - filename (optional)
        - path (optional)
    - compression (block):
        - level (optional)
        - type (required)
    - http_server_location (block):
        - dynamic_filename_enabled (optional)
        - dynamic_path_enabled (optional)
        - filename (required)
        - path (required)
        - relative_url (required)
    - sftp_server_location (block):
        - dynamic_filename_enabled (optional)
        - dynamic_path_enabled (optional)
        - filename (required)
        - path (required)
EOT

  type = map(object({
    data_factory_id       = string
    linked_service_name   = string
    name                  = string
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    description           = optional(string)
    folder                = optional(string)
    parameters            = optional(map(string))
    azure_blob_storage_location = optional(object({
      container                 = string
      dynamic_container_enabled = optional(bool)
      dynamic_filename_enabled  = optional(bool)
      dynamic_path_enabled      = optional(bool)
      filename                  = optional(string)
      path                      = optional(string)
    }))
    compression = optional(object({
      level = optional(string)
      type  = string
    }))
    http_server_location = optional(object({
      dynamic_filename_enabled = optional(bool)
      dynamic_path_enabled     = optional(bool)
      filename                 = string
      path                     = string
      relative_url             = string
    }))
    sftp_server_location = optional(object({
      dynamic_filename_enabled = optional(bool)
      dynamic_path_enabled     = optional(bool)
      filename                 = string
      path                     = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        length(v.linked_service_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.http_server_location == null || (length(v.http_server_location.relative_url) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.http_server_location == null || (length(v.http_server_location.path) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.http_server_location == null || (length(v.http_server_location.filename) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.sftp_server_location == null || (length(v.sftp_server_location.path) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.azure_blob_storage_location == null || (length(v.azure_blob_storage_location.container) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.azure_blob_storage_location == null || (v.azure_blob_storage_location.path == null || (length(v.azure_blob_storage_location.path) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.azure_blob_storage_location == null || (v.azure_blob_storage_location.filename == null || (length(v.azure_blob_storage_location.filename) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.folder == null || (length(v.folder) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_dataset_binaries : (
        v.compression == null || (v.compression.level == null || (contains(["Optimal", "Fastest"], v.compression.level)))
      )
    ])
    error_message = "must be one of: Optimal, Fastest"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

