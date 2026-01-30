resource "google_compute_network" "vpc" {
  name                    = "gke-demo-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "gke-demo-subnet"
  region        = var.region
  ip_cidr_range = "10.10.0.0/16"
  network       = google_compute_network.vpc.id
}

