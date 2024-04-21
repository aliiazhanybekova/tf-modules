resource "google_storage_bucket" "gcs_bucket" {
  name          = var.bucket_name
  location      = var.location
}

resource "google_storage_bucket_iam_member" "terraform_state_bucket_viewer" {
  bucket = google_storage_bucket.gcs_bucket.name
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:devopshub21@gmail.com"
}