# Terraform K3s Infrastructure

Production-like Kubernetes cluster built on Google Cloud using Terraform with full automation.

## Features
- Modular Terraform (VM, Network, Firewall)
- Automated K3s cluster provisioning (master + workers)
- Multi-node Kubernetes cluster (scalable)
- Automated application deployment via startup scripts
- Ingress routing with Traefik + HTTPS (Let's Encrypt)
- Advanced networking with Cilium (kube-proxy replacement)
- Fault tolerance validated via node failure simulation

## Architecture

 GCP VM (Master + Workers)
 ↓
 K3s Cluster
 ↓
 Cilium (CNI)
 ↓
 Traefik (Ingress Controller)
 ↓
 Cloudflare DNS + HTTPS

## Related Repository

Kubernetes manifests & app deployment:
-> https://github.com/Dans9881/infra-k3s

## Requirements

- Terraform >= 1.0
- Google Cloud account
- SSH key (`~/.ssh/id_ed25519.pub`)

## Usage

```bash
# Clone repo
git clone https://github.com/your-username/terraform-k3s
cd terraform-k3s

# Copy example variables
cp terraform.tfvars.example terraform.tfvars

# Edit sesuai kebutuhan
nano terraform.tfvars

# Initialize Terraform
terraform init

# Deploy infrastructure
terraform apply