resource "google_artifact_registry_repository" "nexus-repo" {
  location      = var.region
  repository_id = var.project_id
  format        = "DOCKER"
}

resource "google_artifact_registry_repository_iam_member" "gke_pull_permission" {
  repository = google_artifact_registry_repository.nexus-repo.name
  role       = "roles/artifactregistry.reader"
  member     = "serviceAccount:${google_service_account.nexus_sa.email}"
}
