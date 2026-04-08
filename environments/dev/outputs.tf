output "master_ip" {
  value = module.master.public_ip
}

output "worker_ips" {
  value = {
    for name, m in module.worker :
    name => m.public_ip
  }
}

output "ssh_commands" {
  value = {
    master = "ssh ${var.ssh_user}@${module.master.public_ip}"

    workers = {
      for name, m in module.worker :
      name => "ssh ${var.ssh_user}@${m.public_ip}"
    }
  }
}