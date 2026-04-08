variable "name" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "ssh_user" {
  type = string
}

variable "public_key" {
  type = string
}

variable "tags" {
  type = list(string)
}

variable "network" {
  type = string
}

variable "disk_size" {
  type    = number
  default = 50
}

variable "disk_type" {
  type    = string
  default = "pd-standard"
}

variable "repo_url" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "node_role" {
  type = string
}

variable "node_token" {
  type    = string
  default = ""
}

variable "master_ip" {
  type    = string
  default = ""
}

variable "private_key" {
  type = string
}