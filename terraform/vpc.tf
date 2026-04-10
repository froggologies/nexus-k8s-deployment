resource "google_compute_network" "default" {
  name = "default"
}

resource "google_compute_subnetwork" "asia_southeast2" {
  name          = "asia-southeast2"
  ip_cidr_range = "10.0.0.0/16"
  region        = "asia-southeast2"
  network       = google_compute_network.default.id
}
