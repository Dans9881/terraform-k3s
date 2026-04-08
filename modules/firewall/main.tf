resource "google_compute_firewall" "allow" {
  name    = "${var.name}-allow"
  network = var.network

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  source_ranges = var.source_ranges

  target_tags = var.target_tags
}