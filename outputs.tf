output "kms_key_rings_id" {
  description = "Map of id values across all kms_key_rings, keyed the same as var.kms_key_rings except keys with no id are omitted"
  value       = { for k, v in google_kms_key_ring.kms_key_rings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_key_rings_location" {
  description = "Map of location values across all kms_key_rings, keyed the same as var.kms_key_rings except keys with no location are omitted"
  value       = { for k, v in google_kms_key_ring.kms_key_rings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "kms_key_rings_name" {
  description = "Map of name values across all kms_key_rings, keyed the same as var.kms_key_rings except keys with no name are omitted"
  value       = { for k, v in google_kms_key_ring.kms_key_rings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kms_key_rings_project" {
  description = "Map of project values across all kms_key_rings, keyed the same as var.kms_key_rings except keys with no project are omitted"
  value       = { for k, v in google_kms_key_ring.kms_key_rings : k => v.project if v.project != null && length(v.project) > 0 }
}

