#Create a single Compute Engine instance default
resource "google_compute_instance" "default" {
  name         = "duaassvgsrpro01"
  deletion_protection = "true"
  machine_type = "e2-highmem-8"
  zone         = "eu-west1-a"
  tags         = ["un=air"]
  
  boot_disk {
    auto_delete = "false"
    device_name = "duaassvgsrpro01-so"
    initialize_params {
    image = "windows-cloud/windows-2022"
      size = 80  
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.default.id
    name = "ip-int-duaassvgsrpro01"
    address_type = "INTERNAL"
    address      = "10.109.162.2"
    region       = "eu-west1"
    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
####
# [END compute_ias_vm]
