terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.33.0"
    }
  }

}

provider "google" {
  project = var.gcp_project["project"]
  region  = var.gcp_project["region"]
}

data "google_project" "project" {}

module "google_storage_bucket" {
  source = "../modules/google-cloud-storage"

  name     = "tpts-bigquery-terraform-state-dev"
  location = var.gcp_project["region"]
}