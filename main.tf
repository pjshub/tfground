## This code works from Cloud Shell
provider "google" {
  credentials = file("tf-1-354422-30266c84178e.json")
  project = "tf-1-354422"
  region  = "us-central1"
  zone    = us-central1-c
  #Clone, Save, Change+, Stage, Commit, Push 
}
resource "google_compute_instance" "terraform-pj-svc-4" {
  name         = "terraform-pj-svc-4"
  machine_type = "n1-standard-2"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
