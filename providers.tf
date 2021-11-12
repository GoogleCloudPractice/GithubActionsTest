terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }

  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "nagaraju4238-training"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
/*provider "google" {
  project = var.project_id
  region  = var.region
}*/

/*terraform {
  backend "gcs" {
    bucket = "gcp-terraform-github-actions-test"
    prefix = "terraform/state"
  }
}*/

/*terraform {
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
}*/