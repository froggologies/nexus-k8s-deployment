resource "google_service_account" "nexus_sa" {
  account_id   = "nexus-sa"
  display_name = "Nexus Service Account"
}
