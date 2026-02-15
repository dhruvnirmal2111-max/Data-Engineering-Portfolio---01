terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.19.0"
    }
  }
}

provider "google" {
  project = "terraform-proj1-485508"
  region = "australia-southeast1"
  
}


resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-proj1-485508"
  location      = "AUSTRALIA-SOUTHEAST1"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
