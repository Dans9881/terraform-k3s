variable "name" {
  type = string
}

variable "network" {
  type    = string
  default = "default"
}

variable "ports" {
  description = "List of ports to allow"
  type        = list(string)
}

variable "source_ranges" {
  description = "Allowed IP ranges"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "target_tags" {
  description = "Target VM tags"
  type        = list(string)
}

variable "protocol" {
  type    = string
  default = "tcp"
}