output "bucket_name" {
  value = google_storage_bucket.nexus_artifacts.name
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.nexus_cluster.name
}

output "kubernetes_cluster_endpoint" {
  value = google_container_cluster.nexus_cluster.endpoint
}
