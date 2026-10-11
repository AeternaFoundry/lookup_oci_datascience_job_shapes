data "oci_datascience_job_shapes" "datascience_job_shapes_lookup" {
  for_each = var.datascience_job_shapes_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

