output "datascience_job_shapes_lookup_id" {
  description = "Map of id values across all datascience_job_shapes_lookup, keyed the same as var.datascience_job_shapes_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_datascience_job_shapes.datascience_job_shapes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datascience_job_shapes_lookup_compartment_id" {
  description = "Map of compartment_id values across all datascience_job_shapes_lookup, keyed the same as var.datascience_job_shapes_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_datascience_job_shapes.datascience_job_shapes_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "datascience_job_shapes_lookup_filter" {
  description = "Map of filter values across all datascience_job_shapes_lookup, keyed the same as var.datascience_job_shapes_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_datascience_job_shapes.datascience_job_shapes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "datascience_job_shapes_lookup_job_shapes" {
  description = "Map of job_shapes values across all datascience_job_shapes_lookup, keyed the same as var.datascience_job_shapes_lookup except keys with no job_shapes are omitted"
  value       = { for k, v in data.oci_datascience_job_shapes.datascience_job_shapes_lookup : k => v.job_shapes if v.job_shapes != null && length(v.job_shapes) > 0 }
}

