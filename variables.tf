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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_dataset_binary's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LinkedServiceDatasetName] regexp.MustCompile(`^[-.+?/<>*%&:\\]+$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: linked_service_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: http_server_location.relative_url
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: http_server_location.path
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: http_server_location.filename
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: sftp_server_location.path
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: azure_blob_storage_location.container
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: azure_blob_storage_location.path
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: azure_blob_storage_location.filename
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: folder
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: compression.level
  #   condition: contains(["Optimal", "Fastest"], value)
  #   message:   must be one of: Optimal, Fastest
  # path: compression.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

