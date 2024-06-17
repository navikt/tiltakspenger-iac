variable "gcp_project" {
  description = "GCP project and region defaults."
  type        = map(string)
  default = {
    region  = "europe-north1",
    zone    = "europe-north1-a",
    project = "tpts-dev-6211"
  }
}