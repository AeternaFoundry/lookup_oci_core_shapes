data "oci_core_shapes" "core_shapes_lookup" {
  for_each = var.core_shapes_lookup

  compartment_id      = each.value.compartment_id
  availability_domain = each.value.availability_domain
  image_id            = each.value.image_id
  shape               = each.value.shape

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

