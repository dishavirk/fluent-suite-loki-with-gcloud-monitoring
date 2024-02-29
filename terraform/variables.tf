variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
}



variable "vpc_name" {
  description = "The name of the VPC to be created."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet to create within the VPC."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "machine_type" {
  description = "The machine type of the GKE nodes."
  type        = string
}

variable "node_count" {
  description = "The initial node count for the GKE cluster."
  type        = number
}

variable "preemptible" {
  description = "Whether the nodes are preemptible."
  type        = bool
}

variable "min_node_count" {
  description = "Minimum number of nodes in each zone for autoscaling."
  type        = number
}

variable "max_node_count" {
  description = "Maximum number of nodes in each zone for autoscaling."
  type        = number
}

variable "auto_repair" {
  description = "Whether the nodes will be automatically repaired."
  type        = bool
}

variable "auto_upgrade" {
  description = "Whether the nodes will be automatically upgraded."
  type        = bool
}

variable "pods_range_name" {
  description = "The name of the secondary range to use for pods in the cluster."
  type        = string
}

variable "services_range_name" {
  description = "The name of the secondary range to use for services in the cluster."
  type        = string
}

variable "node_tags" {
  description = "List of tags to apply to the nodes for firewall and networking."
  type        = list(string)
  default     = []
}

variable "zone" {
  description = "The zone where the GKE cluster will be created."
  type        = string
}
variable "custom_service_account_email" {
  description = "The custom email of the service account for the node pool"
  type        = string
}
