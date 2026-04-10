resource "google_service_account" "nexus_sa" {
  account_id   = "nexus-sa"
  display_name = "Nexus Service Account"
}

resource "google_project_iam_member" "project" {
  project = var.project_id
  role    = "roles/storage.bucketViewer"
  member  = "serviceAccount:${google_service_account.nexus_sa.email}"
}
