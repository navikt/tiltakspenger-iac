terraform {
  # Låst til samme serie som CI kjører (TERRAFORM_VERSION i deploy-bigquery.yaml).
  # Avviser en Terraform som er eldre enn den testede, og en ny minor som kan skrive state en eldre versjon ikke leser.
  required_version = "~> 1.16.2"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.33.0"
    }
  }

  backend "gcs" {
    bucket = "tpts-bigquery-terraform-state-prod"
  }
}

provider "google" {
  project = var.gcp_project["project"]
  region  = var.gcp_project["region"]
}

data "google_project" "project" {}

module "google_storage_bucket" {
  source = "../modules/google-cloud-storage"

  name     = "tpts-bigquery-terraform-state-prod"
  location = var.gcp_project["region"]
}