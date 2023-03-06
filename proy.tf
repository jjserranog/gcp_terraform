resource "google_project" "my_project-in-a-folder" {
  name       = "air-cpd-dus-pro"
  project_id = "air-cpd-dus-pro"
  folder_id  = google_folder.department1.name
}

