module "networking" {
  source = "./modules/networking"

  project_id  = var.project_id
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
  region      = var.region
}

module "gke" {
  source       = "./modules/gke"
  
  project_id   = var.project_id
  zone = var.zone
  cluster_name = var.cluster_name
  network     = module.networking.vpc_name
  subnetwork  = module.networking.subnet_name
  pods_range_name = var.pods_range_name
  services_range_name = var.services_range_name
}
