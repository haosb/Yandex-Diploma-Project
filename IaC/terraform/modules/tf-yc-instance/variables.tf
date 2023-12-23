variable "zone" {}
variable "subnet_id" {}
variable "image_id" {}

variable "vm_name" {
    default = "usmanov-vm"
    type = string
}

variable "compute_instance_zone" {
    default = "ru-central1-a"
    type = string
}

variable "compute_instance_platform_id" {
    default = "standard-v1" 
}

variable "compute_instance_scheduling" {
    default = true
    type = bool
}

variable "compute_instance_count" {
    default = 3
    type = number
}

variable "compute_instance_cores" {
    default = 2
    type = number
}

variable "compute_instance_ram" {
    default = 2
    type = number
  
}

variable "compute_instance_disk_size" {
    default = 30
    type = number
}

variable "compute_instance_nat" {
    default = true
    type = bool
  
}