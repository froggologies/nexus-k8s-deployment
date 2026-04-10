resource "google_container_cluster" "nexus_cluster" {
  name     = "nexus-cluster"
  location = var.zone

  network                  = google_compute_network.default.name
  subnetwork               = google_compute_subnetwork.asia_southeast2.name
  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = false
}

resource "google_container_node_pool" "nexus_nodes" {
  name       = "nexus-node-pool"
  cluster    = google_container_cluster.nexus_cluster.name
  location   = var.zone
  node_count = 1

  node_config {
    service_account = google_service_account.nexus_sa.email
    preemptible     = true
    machine_type    = "n1-standard-1"

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
