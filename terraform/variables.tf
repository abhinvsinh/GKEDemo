variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region (used for networking and Artifact Registry)"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GKE zone (zonal cluster to reduce cost)"
  type        = string
  default     = "us-central1-a"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "gke-demo"
}
# test terraform plan workflow

