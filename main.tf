provider "google" {
  project = "your-project-id" # Replace with your Google Cloud project ID
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name     = "my-secure-bucket"
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
