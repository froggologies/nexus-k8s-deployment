resource "google_storage_bucket" "nexus_artifacts" {
  name                        = "${var.project_id}-nexus-artifacts"
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true

  public_access_prevention = "enforced"
}
