provider "google" {
  project = "lab1-450801" 
  region  = "us-central1"
  credentials = file("credentials.json")
}

resource "google_storage_bucket" "example" {
  name     = "ramesh-zaheed-bucket"
  location = "US"

  versioning {
    enabled = true
  }
}

resource "google_storage_bucket_iam_member" "admin" {
  bucket = google_storage_bucket.example.name
  role   = "roles/storage.admin"
  member = "user:rameshkc.tech@gmail.com" 
}
