## This code works from Cloud Shell
provider "google" {
  credentials = file("../sakeys/tf-1-354422-key.json")
  project = "tf-1-354422"
  region  = "us-central1"
  zone    = "us-central1-c"
  #Clone, Save, Change+, Stage, Commit, Push 
  ##
}
resource "google_compute_instance" "terraform-pj-svc-4" {
  name         = "terraform-pj-svc-42"
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
resource "google_storage_bucket" "default" {
  name = "pj-my-bucket"
  location = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}
