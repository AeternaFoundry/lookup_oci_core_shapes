variable "core_shapes_lookup" {
  description = <<EOT
Map of core_shapes_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - image_id
    - shape
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id      = string
    availability_domain = optional(string)
    image_id            = optional(string)
    shape               = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

