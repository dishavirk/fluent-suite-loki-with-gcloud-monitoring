variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "custom_service_account_email" {
  description = "The custom email of the service account for the node pool"
  type        = string
}

variable "zone" {
  description = "The zone where the GKE cluster will be created."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "network" {
  description = "The VPC network name the GKE cluster will be part of."
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork name the GKE cluster will be part of."
  type        = string
}

variable "pods_range_name" {
  description = "The name of the secondary range to use for pods."
  type        = string
}

variable "services_range_name" {
  description = "The name of the secondary range to use for services."
  type        = string
}

variable "node_count" {
  description = "The initial node count for the GKE cluster."
  type        = number
  default     = 3
}

variable "preemptible" {
  description = "Whether the nodes are preemptible."
  type        = bool
  default     = false
}

variable "machine_type" {
  description = "The machine type of the GKE nodes."
  type        = string
  default     = "e2-medium"
}

variable "node_tags" {
  description = "List of tags to apply to the nodes for firewall and networking."
  type        = list(string)
  default     = []
}

variable "auto_repair" {
  description = "Whether the nodes will be automatically repaired."
  type        = bool
  default     = true
}

variable "auto_upgrade" {
  description = "Whether the nodes will be automatically upgraded."
  type        = bool
  default     = true
}

variable "min_node_count" {
  description = "Minimum number of nodes in each zone."
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Maximum number of nodes in each zone."
  type        = number
  default     = 3
}
