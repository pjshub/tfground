## This code works from Cloud Shell
### Test for DragonFly
terraform {
  backend "gcs" {
    bucket = "tf-1-terraform-state-bucket"
    prefix = "tf-1-state-bucket/prod" # Optional for organization
  }
}
provider "google" {
  credentials = file("../sakeys/tf-1-354422-key.json")
  project     = "tf-1-354422"
  region      = "us-central1"
  zone        = "us-central1-c"
  #Clone, Save, Change+, Stage, Commit, Push 
  ##
}
resource "google_compute_instance" "terraform-pj-svc-4" {
  name         = "terraform-pj-svc-412"
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
resource "google_storage_bucket" "bucket-1" {
  name                        = "pj-my-bucket-1"
  location                    = "US"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
resource "google_storage_bucket" "bucket-2" {
  name                        = "pj-my-bucket-2"
  location                    = "US"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
}
