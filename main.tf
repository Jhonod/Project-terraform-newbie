provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_artifact_registry_repository" "netbox_repo" {
  location      = var.region
  repository_id = var.repository_id
  format        = "DOCKER"
  description   = "Netbox Docker Registry"
}
