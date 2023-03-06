# Reglas fw 

# [START vpc_port_22_ssh_fw]
resource "google_compute_firewall" "ssh" {
  name = "allow-vpc_port_22_ssh_fw"
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = google_compute_network.vpc_network.id
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
# [END  vpc_port_22_ssh_fw ]


# [START vpc_port_5000_fw]
resource "google_compute_firewall" "flask" {
  name    = "allow-vpc_port_5000_fw"
  network = google_compute_network.vpc_network.id

  allow {
    protocol = "tcp"
    ports    = ["5000"]
  }
  source_ranges = ["0.0.0.0/0"]
}
# [END vpc_port_5000_fw]]



# Allow https
resource "google_compute_firewall" "https" {
  name    = "allow-vpc_port_443_https_fw"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["443]
  }
  
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["http"] 
}
# allow rdp
resource "google_compute_firewall" "allow-rdp" {
  name    = "kopicloud-fw-allow-rdp"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["rdp"]
}