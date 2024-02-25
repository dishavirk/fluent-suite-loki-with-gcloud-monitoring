output "cluster_name" {
  value       = google_container_cluster.cluster.name
  description = "The name of the GKE cluster."
}

output "cluster_endpoint" {
  value       = google_container_cluster.cluster.endpoint
  description = "The endpoint of the GKE cluster."
}

output "cluster_ca_certificate" {
  value       = google_container_cluster.cluster.master_auth[0].cluster_ca_certificate
  description = "The cluster ca certificate (base64 encoded) of the GKE cluster."
}
