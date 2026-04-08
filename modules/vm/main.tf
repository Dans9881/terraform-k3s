resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = var.disk_size
      type  = var.disk_type
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
    access_config {}
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.public_key}"
    ssh-private-key = var.private_key
  }

  metadata_startup_script = templatefile("${path.module}/startup.sh", {
    ssh_user    = var.ssh_user
    repo_url    = var.repo_url
    node_role   = var.node_role
    master_ip   = var.master_ip
    private_key = var.private_key
    node_token  = var.node_token
  })

  tags = var.tags
}