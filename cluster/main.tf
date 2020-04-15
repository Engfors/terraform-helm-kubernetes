terraform {
  backend "remote" {
    organization = "engfors"

    workspaces {
      name = "cluster"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.location.gcp
}
