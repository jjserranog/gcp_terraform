#Create a single Compute Engine instance
resource "google_compute_instance" "default" {
  name         = "flask-vm"
  machine_type = "e2-highmem-8"
  zone         = "eu-west3-a"
  tags         = ["un=air"]

  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-2022"
      size = 80  
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.default.id

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
# [END compute_ias_vm]
