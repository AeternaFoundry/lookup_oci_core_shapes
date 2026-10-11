output "core_shapes_lookup_id" {
  description = "Map of id values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_shapes_lookup_availability_domain" {
  description = "Map of availability_domain values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no availability_domain are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "core_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_shapes_lookup_filter" {
  description = "Map of filter values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_shapes_lookup_image_id" {
  description = "Map of image_id values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no image_id are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.image_id if v.image_id != null && length(v.image_id) > 0 }
}
output "core_shapes_lookup_shape" {
  description = "Map of shape values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no shape are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "core_shapes_lookup_shapes" {
  description = "Map of shapes values across all core_shapes_lookup, keyed the same as var.core_shapes_lookup except keys with no shapes are omitted"
  value       = { for k, v in data.oci_core_shapes.core_shapes_lookup : k => v.shapes if v.shapes != null && length(v.shapes) > 0 }
}

