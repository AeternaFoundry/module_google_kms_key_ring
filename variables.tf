variable "kms_key_rings" {
  description = <<EOT
Map of kms_key_rings, attributes below
Required:
    - location
    - name
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location = string
    name     = string
    project  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

