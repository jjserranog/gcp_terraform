### CREATE network
resource "google_compute_network" "vpc_network" {
  name                    = "vpc-cpd-dus-pro"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "default" {
  name          = "sn-cpd-dus-pro"
  ip_cidr_range = "10.109.162.0/27"
  region        = "eu-west1"
  network       = google_compute_network.vpc_network.id
}