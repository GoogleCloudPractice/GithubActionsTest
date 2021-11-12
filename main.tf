/*terraform {
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
}*/

/*provider "google" {
#credentials = file("C:/keys/flash-surge-331812-6d0a2709fccf.json")

project = "flash-surge-331812"
region  = "asia-south1"
zone    = "asia-south1-a"
}*/

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}

