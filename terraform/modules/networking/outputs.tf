output "vpc_id" {
  value       = google_compute_network.vpc.id
  description = "The ID of the VPC."
}

output "subnet_id" {
  value       = google_compute_subnetwork.subnet.id
  description = "The ID of the subnet."
}

output "subnet_self_link" {
  value       = google_compute_subnetwork.subnet.self_link
  description = "The self link of the subnet."
}
output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}
