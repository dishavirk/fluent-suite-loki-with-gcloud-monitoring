# GCP Configuration
project_id = "golang-logging-demo"
region  = "us-central1"
zone = "us-central1-a"

# Networking Configuration
vpc_name    = "my-vpc"
subnet_name = "my-subnet"
subnet_cidr = "10.0.0.0/24"

# GKE Cluster Configuration
cluster_name      = "my-gke-cluster"
machine_type      = "e2-medium"
node_count        = 3
preemptible       = false
min_node_count    = 1
max_node_count    = 3
auto_repair       = true
auto_upgrade      = true
pods_range_name   = "my-pods-range"
services_range_name = "my-services-range"
node_tags         = ["gke-node", "http-server", "https-server"]  # Adjust based on your requirements
