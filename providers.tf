provider "google" {
  project = var.project_id
  region  = var.region
}

/*terraform {
  backend "gcs" {
    bucket = "gcp-terraform-github-actions-test"
    prefix = "terraform/state"
  }
}*/

terraform {
  backend "gcs" {
    project = var.project_id
    bucket  = "terraform-state"
    prefix  = "terraform/state/dev/d001"
    credentials = "credentials.json"
  }
}

data "terraform_remote_state" "d001" {
  backend = "gcs"
  config {
    project = var.project_id
    bucket  = "terraform-state"
    prefix  = "terraform/state/dev/d001"
    credentials = "${var.credentials}"
  }
}