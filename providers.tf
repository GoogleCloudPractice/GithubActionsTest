provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "gcp-terraform-github-actions-test"
    prefix = "terraform/state"
  }
}