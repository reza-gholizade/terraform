variable "vsphere_datacenter" {
  type        = string
  description = "The name of the datacenter in which to create the disk."
}

variable "vsphere_datastore" {
  type        = string
  description = "The name of the datastore in which to create the disk."
}

variable "virtual_disk_size" {
  type        = string
  description = "Size of the disk (in GB)."
}

variable "virtual_disk_type" {
  type        = string
  description = " The type of disk to create."
}
