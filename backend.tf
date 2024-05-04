terraform {
 backend "gcs" {
   bucket  = "tf-1-tfstate-bkt-pj"
   prefix  = "terraform/state"
 }
}