resource "google_artifact_registry_repository" "nexus-repo" {
  location      = var.region
  repository_id = var.project_id
  format        = "DOCKER"
}
