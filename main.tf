provider "google" {
  version = "3.5.0"

  credentials = file("terraform.json")

  project = "playground-s-11-0e9c994b"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "new-terraform-network"
}