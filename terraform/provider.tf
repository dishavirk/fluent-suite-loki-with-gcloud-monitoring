
terraform {
  # required_version = ">= 0.14, < 0.16"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.5"
    }
  }
}

provider "google" {
  credentials = file("/Users/Disha/Downloads/golang-logging-demo-e72d86139256.json")
  project     = var.project_id
  region      = var.region
}
