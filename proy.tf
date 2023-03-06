resource "google_project" "air-cpd-dus-pro" {
  name       = "air-cpd-dus-pro"
  project_id = "air-cpd-dus-pro"
  folder_id  = google_folder.air-cpd-dus-pro.name
}

