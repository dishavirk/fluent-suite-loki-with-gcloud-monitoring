variable "project_id" {
  description = "The ID of the project in which resources will be provisioned."
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC to create."
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

variable "region" {
  description = "The region where the subnet will be created."
  type        = string
}
