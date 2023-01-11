terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.48.0"
    }
  }

  required_version = "~> 1.3.6"
}

provider "google" {
  project     = var.project_id
  region      = var.region
}