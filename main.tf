resource "google_kms_key_ring" "kms_key_rings" {
  for_each = var.kms_key_rings

  location = each.value.location
  name     = each.value.name
  project  = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

